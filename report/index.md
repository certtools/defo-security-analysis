---
title: Remaining potential weaknesses in ECH (Encrypted Client Hello)
author:
  - L. Aaron Kaplan
  - Sebastian Wagner
date: 2025-06-30
keywords:
  - ECH
  - Encrypted Client Hello
  - Server Name Indication
  - ESNI
  - Security
  - Privacy
titlepage: "true"
toc-own-page: "true"
subtitle: The consequences of the adoption of ECH and its related protocols
watermark: DRAFT
---
# About this report

The following security analysis tries to identify weaknesses in the ECH protocol (especially as it also interfaces with lots of other protocols).
It is part of the DEfO project - Developing ECH for OpenSSL[^1].

In the DEfO project, task 9.1 deals with:

>  Deployment Scenarios Analysis: there are many variations in how ECH can be deployed and the varying relationships between the client and server entities involved. There therefore remains a need to map out residual privacy leaks in such scenarios and how to plug those, given the existence of additional privacy mechanisms such as Qname Minimization, Oblivious DNS-over-HTTPS, and MASQUE.
>
> This task will accumulate practical documentation (for deployers) and analyses covering these issues. It is clear ECH reduces metadata leakage, but it is not yet clear how censors might react. This task will audit and review the metadata in a properly functioning ECH interaction and explore remaining avenues for de-anonymisation, filtering, blocking and censorship. This touches relevant protocols required in an ECH setup, such as: DNS-over-HTTPS (DoH), DNS-over-TLS (DoT), OCSP (Online Certificate Status Protocol), certificate revocation list (CRLs), etc. We will also focus on “medium scale” web sites such as found on a University campus, smaller hosters or NREN member organisation – CDNs already see the benefits of ECH and have a clear path to deployment, but it is important to enable smaller, but still significant, scale organizations to enjoy the benefits of ECH. The task will result in one report.

# How to read this report

This report intentionally takes a skeptical perspective. Not in order to criticize ECH or the approach but rather to challenge the protocol authors, implementers and deployments to think about certain aspects we mention in the report.
This "skeptical"/outside view helps to ask hard questions and identify potential issues which might have been overlooked.

By releasing this report we aim to improve future versions.

It is clear that - given such widely used code  and protocol stacks as with HTTP/HTTPS, changing things is very hard. ECH tries to achieve the maximum possible, given lots of constraints by the protocol landscape, implementors, etc. Hence, ECH has to live with all the legacy issues. It's probably not possible to find a quick, elegant and 100% compatible solution for the problem which ECH is trying to address.
ECH being a complex solution is inherent - RFC8744 provides lots of background for these matters.

Finally, we acknowledge that ECH is an incremental update step and we assume there will be an incremental roll-out of ECH globally. This has multiple implications:
1) every deployment will protect clients a bit more ("herd-immunity" principle)
2) weaknesses in ECH highlighted in the report do not necessarily affect all deployments (there will be variations)
3) ECH will grow over time and add privacy over time. It's not a binary turning privacy on or off situation. 

ECH will be measured by its provisioning of privacy after all.

With these things being said, the report will skeptically look at ECH.


# Overall conclusions and summary of the report

While ECH provides privacy improvements over cleartext SNI, the protocol also introduces complexity and new attack vectors primarily centered around DNS manipulation and complex deployment scenarios. The greatest risks arise from the protocol's dependency on DNS infrastructure and as well on the potential for downgrade attacks. Successful ECH deployments require close attention to

- operational security,
- comprehensive monitoring,
- and a secure DNS (signed zones, detectability of tampering with DNS answers, etc.)

From the clients' perspective, the main question is:

- which DoH/DoT recursive servers can one use? Are they even reachable from within the country of the client? Or are they blocked, re-directed or manipulated? Untrusted DoH/DoT recursive servers pose a security as well as a privacy problem.
Depending on the trust the client may place into the recursive DNS server, it might get correct or incorrect answers and hence be able to reach ECH enabled servers or a mere look-alike middle-man server. It's debatable if this is an issue that ECH can address. Probably not. However, we believe it's worth noting. 
- Can the client detect downgrade attacks and how does it deal with them? The RFC standard is a big vague here (SHOULD vs. MUST) ("...the client SHOULD abandon its attempt to reach the service"[^2]). We recommend looking at this issue when implementing ECH in TLS libraries.

In addition, the authors of this report see two major concerns with ECH deployments for the internet as a whole:

1. ECH depends on multiple protocols and specifications to work together seamlessly. The protocol's fundamental reliance on DNS creates a large attack surface that inherits many of DNS's security issues.
In addition to DNS, quite a few other protocols are involved. This creates an even bigger attack surface. The interfaces between protocols are usually interesting targets for attackers. We recommend that the authors of the RFC drafts closely take a look at these edge-case vulnerabilities. The report highlights some of those such as the WKECH interface between DNS zones and CFS/backend servers.
2. ECH leads to more centralization of the internet: the CDNs will profit. More centralization actually leads to more data being in the hands of only one or just a handful of organisations. Therefore, the risk of de-anonymization by combining and correlating different data sets (ECH configs, DNS recursor query logs (such as passive DNS[^3], DNS query traces), Certificate transparency logs (CTLs)[^4]) actually *increases*: any organisation combining these data sets could most probably completely de-anonymize the traffic. The more of these datasets are in the hand of fewer organisations, the higher the risk these datasets can be combined.
3. The complexity of the protocol and the setup costs (in terms of manpower) favor the large players. Smaller players might make mistakes in their setups.
4. Small and medium size organisations often don't host that many services on one IP address anyway. See "The web is still small after more than a decade[^5]", Nguyen Phong Hoang, et. al. Therefore the anonymity data set is usually small. Guessing and inferring which hostname a client connected to is trivial in the case that one IP address only hosts one service with one hostname.
5. Smaller and medium sized organisations won't necessarily profit from protecting the clients' privacy. Exceptions are listed in [incentives](deployment/incentives.md). So why should they bother deploying ECH (and risking downtime)? We have a game-theoretic problem here. Which in turn will only lead to more centralization (see 3.) which will lead to 2.

Nevertheless, apart from these overall considerations, we recommend that organizations wishing to deploy ECH should prioritize

- security controls around DNS infrastructure,
- implement robust monitoring for ECH-related attacks,
- and prepare for the operational complexity introduced by the protocol's multi-layer dependencies.


[^1]: <https://defo.ie/>
[^2]: <https://www.rfc-editor.org/rfc/rfc9460.html#name-handling-resolution-failure>
[^3]: <https://www.ietf.org/archive/id/draft-dulaunoy-dnsop-passive-dns-cof-12.html>
[^4]: <https://datatracker.ietf.org/doc/rfc6962/>
[^5]: <https://www.researchgate.net/publication/341627684_The_web_is_still_small_after_more_than_a_decade>
