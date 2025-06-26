# Censorship

This section provides a short overview of the regions currently use SNI for censorship purposes, those blocking ECH usage, and countries that may soon implement similar measures.

For a comprehensive analysis of internet censorship practices around the globe, see A Survey of Worldwide Censorship Techniques[^1] and Open Observatory of Network Interference[^2].

## Russia

Russia is known to block traffic to Cloudflare when ECH is in use.[^3]
The Russian government utilizes Server Name Indicator (SNI) information to enforce censorship measures.
Additionally, the administration promotes the use of domestic service providers instead of Cloudflare and other foreign Content Delivery Networks.
This shift aims to facilitate greater domestic control over data transmission and access.

## China

The Great Firewall (GFW) of China is one of the most extensive censorship implementation in the world and reports indicate that China is blocking ESNI and ECH.[^4]

The GFW utilizes SNI alongside other technologies enforce content blocking.

## South Korea

South Korea uses SNI to restrict access to specific online resources.[^5]

While people in South Korea could previously used ESNI as a workaround to bypass these restrictions, browser updates have removed support for ESNI, complicating efforts to maintain online privacy.

As laid out in [Incentives](deployment/incentives.md), the affected industries have also commercial interest in using ECH.

It is yet unclear how South Korea's authorities will react to ECH.

## Kazakhstan

Kazakhstan uses a national Certificate Authority (CA) to intercept and decrypt TLS traffic.[^6]
In this case, ECH offers no benefit at all, as the central decryption of all traffic serves all counter-measures ineffective.

## Others

Several countries use unencrypted SNI for filtering and blocking websites, including:

Cuba, Egypt, India, Iran, Saudi Arabia, Syria, Turkey, Turkmenistan, United Arab Emirates, Vietnam

Once ECH plays a relevant role, we expect that these countries block ESNI/ECH to ensure the effectiveness of their measures.


[^1]: <https://www.ietf.org/archive/id/draft-irtf-pearg-censorship-10.html>
[^2]: <https://ooni.org/>

[^3]: <https://github.com/net4people/bbs/issues/417> <https://therecord.media/russia-blocks-thousands-of-websites-that-use-cloudflare-service>

[^4]: <https://gfw.report/blog/gfw_esni_blocking/en/> <https://github.com/net4people/bbs/issues/43>

[^5]: <https://www.bleepingcomputer.com/news/security/south-korea-is-censoring-the-internet-by-snooping-on-sni-traffic/> <https://www.technadu.com/south-korea-extend-site-blocking-snooping-sni/58125/>

[^6]: <https://censoredplanet.org/kazakhstan>
