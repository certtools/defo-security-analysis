# Browsers and ECH (Encrypted Client Hello)

Modern web browsers are notably permissive toward emerging standards, often prioritizing user functionality over enforcing new security features. With their quick adoption of new technologies and fast release cycles, they effectively serve as experimental platforms for evaluating and implementing new protocols in real-world environments.

The leading browsers Firefox, Chrome, Edge and further Brave, Opera, Vivaldi adopted DoH as their default setting, reverting back to Do53 should a DoH connection fail to establish. Such failures can arise from active downgrade attacks, where malicious entities intercept and manipulate traffic. Consequently, the implementation of ECH can be thwarted if an attacker holds sway over any part of the network path between the user and the intended target.

For the implementation of ECH, attention must not only be paid to pure HTTPS traffic but also to other communication channels such as WebRTC and network proxies, as neglecting ECH on these channels can introduce ways for de-anonymization.

### OCSP and CRL

Online Certificate Status Protocol (OCSP) and Certificate Revocation Lists (CRL) are core components in the validation of digital WebPKI certificates. The data is typically transmitted over HTTP but verified through signing by the Certificate Authority (CA).
Access to these lists can be obstructed through packet inspection due to the unencrypted nature of the traffic. Browsers generally employ a soft-fail approach for CRL validations by default, meaning the information about a revoked certificate may not reach the client. If an adversary has the capability to interfere at this stage, they may effectively disrupt other, more important connections as well.

OCSP has recently been called into question and may be nearing obsolescence: <https://letsencrypt.org/2022/09/07/new-life-for-crls/>. As a result, the CRLs' importance increases again.

This study found no relevant interplay of ECH on these mechanisms.
