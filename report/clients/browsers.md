# Browsers and ECH

Modern web browsers are notably permissive toward emerging standards, often prioritizing user functionality over enforcing new security features if the potential impact is too disruptive. With their quick adoption of new technologies and fast release cycles, they effectively serve as experimental platforms for evaluating and implementing new protocols in real-world environments.

The browser Firefox adopted DoH as their default setting, reverting back to Do53 should a DoH connection fail to establish.
The Browsers Chrome and Edge use DoH if the system's default resolver supports it.
Opera, Brave and Vivaldi do not use DoH by default.

DoH connection failures can arise from active downgrade attacks, where malicious entities intercept and manipulate traffic.
Consequently, the usage of ECH can be silently thwarted if an attacker holds sway the network path between the user and the intended DoH server or between recursive and authoritative DNS server.
An attacker with control over the network connection can though also block TLS and other security measures, but not without alarm bells going off in the browser and other clients.

For the implementation of ECH, attention must not only be paid to pure HTTPS traffic but also to other communication channels such as WebRTC and network proxies, as neglecting ECH on these channels can introduce ways for de-anonymization.

## Browsers' Policy Enforcement Power

In the past, Browsers and the CA/Browser forum have repeatedly shown that they can enforce new policies towards network and website operators, pushing them to fast adjustments to not risk their website's reputations, such as:

- Starting in 2015, Browsers gradually marked unencrypted HTTP connections as unsafe, pushing all website operators to use HTTPS.
- Previous to 2011, certificate lifetimes of up to 10 years were allowed by standards and accepted by browsers. Since 2020, a year is the maximum allowed lifetime. Discussions on further reductions are ongoing.
- Other examples include: Deprecation of SHA-1 (2014-2017) and Deprecation of RSA Keys (since 2010), Distrust of CAs (Symantec, 2017–2018), Mixed Content Blocking, Requirements to CAs[^4] such as Certificate Transparency, OCSP, `SubjectAltName`, Domain Validation Methods, Deprecation of Certificates for Internal Server Names (2011-2016), Deprecation of TLS protocols and cipher suites

The reasons for this effectiveness lie in the huge market share of a small number of browsers and, on the operators' side, the high reputation risk: Website operators simply cannot afford security warnings or site breakage.

These policies are increasingly getting tighter, pushing the operators to more automation and more complex environments. This, in turn makes the operation less efficient pushing many of them to centralized service operators. This counteracts the original intention of a decentralized Internet.

**Therefore, we emphasize that Browsers must not use its power to enforce ECH** because they push users to DoH.

## DoH server oligarchy

If communication between client and server only uses ECH to hide the destination server's name, but does not use encrypted DNS, intermediaries are still able to eavesdrop the destination by observing the Name Resolution traffic.
Therefore ECH relies on the usage of DoH, DoT (DNS over TLS) or DoQ (DNS over QUIC) to hide the server's name entirely.

Of the three encrypted DNS protocols, DoH is the most used, therefore we focus here on this one.
As DNS over QUIC isn't yet widely used on the client's side, we cannot yet foresee the consequences.
And DoT is intended to be used as decentralized as Do53.

Firefox and Edge use Coudflare's DoH server, and Chrome uses Google's DoH server.
Just two DoH servers provide DoH services to the majority of browser users.
Although users could change the DoH server setting, only a fraction will do that or even understand what DoH is.
This imbalance implies various problem areas:

- Privacy: Despite their emphasis that they won't save the query data, these policies can change at any time. Users are locked into a trust dependency without opt-in.
- Jurisdiction and Geopolitics: The DoH servers are operated by companies in a single country. Their legal system can force them to share the query data at any time, impacting users **worldwide** without any possibility for them to notice.
- Market dominance: Two companies control the majority of all DoH traffic. This creates a huge market dominance. In the future, this could lead to them effectively taking over the role of Domain registrars.

Firefox used to require DoH for ECH in Firefox 119[^1], but stopped doing so in Firefox 129[^2].
As DoH is required for proper ECH, these problems are worsened by ECH.
ECH aims to defend users' privacy, but its reliance on DoH may thwart this goal.

The Tor is reluctant on the usage of DoH for the same reason[^3].

## OCSP and CRL

Online Certificate Status Protocol (OCSP) and Certificate Revocation Lists (CRL) are core components in the validation of digital WebPKI certificates. The data is typically transmitted over HTTP but verified through signing by the Certificate Authority (CA).
Access to these lists can be obstructed through packet inspection due to the unencrypted nature of the traffic. Browsers generally employ a soft-fail approach for CRL validations by default, meaning the information about a revoked certificate may not reach the client. If an adversary has the capability to interfere at this stage, they may effectively disrupt other, more important connections as well.

OCSP has recently been called into question and may be nearing obsolescence[^5]. As a result, the CRLs' importance increases again.

This study found no relevant interplay of ECH on CRL and OCSP mechanisms.

[^1]: [Change Log of Firefox 119](https://www.mozilla.org/en-US/firefox/119.0/releasenotes/), [Mozilla Blog Post on ECH introduction](https://blog.mozilla.org/en/firefox/encrypted-hello/), [Mozilla Wiki on ECH](https://wiki.mozilla.org/Security/Encrypted_Client_Hello#Dependency_on_DoH)

[^2]: [Change Log of Firefox 129](https://www.mozilla.org/en-US/firefox/129.0/releasenotes/)

[^3]: [Tor Issue Tracker: Think about using DNS over HTTPS for Tor Browser](https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/30753)

[^4]: <https://cabforum.org/baseline-requirements/>

[^5]: <https://letsencrypt.org/2022/09/07/new-life-for-crls/>
