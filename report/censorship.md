# Censorship

This section provides an overview of the regions currently use SNI for censorship purposes, those blocking ECH usage, and countries that may soon implement similar measures.

For a comprehensive analysis of internet censorship practices around the globe, see [A Survey of Worldwide Censorship Techniques](https://www.ietf.org/archive/id/draft-irtf-pearg-censorship-10.html).

## Russia

Russia is know to block ECH traffic:

- <https://github.com/net4people/bbs/issues/417>
- <https://therecord.media/russia-blocks-thousands-of-websites-that-use-cloudflare-service>

The government uses SNI information as a method for implementing censorship measures. Furthermore, foreign content delivery networks (CDNs) are prohibited, enforces the use of domestic service providers. This keeps the control over data transmission and access national.

## China

The Great Firewall (GFW) of China is one of the most extensive censorship implementation in the world and reports indicate that China is blocking ESNI and ECH.

The GFW utilizes SNI alongside other technologies enforce content blocking.

Sources:

- <https://gfw.report/blog/gfw_esni_blocking/en/>
- <https://github.com/net4people/bbs/issues/43>

## South Korea

South Korea uses SNI to restrict access to specific online resources.

While people in South Korea could previously used ESNI as a workaround to bypass these restrictions, browser updates have removed support for ESNI, complicating efforts to maintain online privacy.

As laid out in [Incenctives](deployment/incentives.md), the affected industries have also commercial interest in using ECH.

It is yet unclear how South Korea's authorities will react to ECH.

- <https://www.bleepingcomputer.com/news/security/south-korea-is-censoring-the-internet-by-snooping-on-sni-traffic/>

- <https://www.technadu.com/south-korea-extend-site-blocking-snooping-sni/58125/>

## Kazakhstan

Kazakhstan uses a national Certificate Authority (CA) to intercept and decrypt TLS traffic.
In this case, ECH offers no benefit at all, as the central decyption of all traffic serves all counter-measures ineffective.

Sources:

- <https://censoredplanet.org/kazakhstan>

## Others

Several countries use unencrypted SNI for filtering and blocking websites, including:

Cuba, Egypt, India, Iran, Saudi Arabia, Syria, Turkey, Turkmenistan, United Arab Emirates, Vietnam

Once ECH plays a relevant role, we expect that these countries block ESNI/ECH to ensure the effectiveness of their measures.
