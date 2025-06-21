# Correlations on traffic patterns

XXX Feedback - 10.2: that probably needs a bit more explanation (for most readers), and I've always wondered how much it really needs a closed-world for the attacks to succeed

There is extensive research on this topic. Traffic corrections do not depend on unencrypted SNI, so ECH will not have any effect on this.

The idea is that you can still correlate a lot if you have independent datasets such as:
* CTLs (Certificate Transparency Logs)
* DNS traces (i.e. if you operate  a DoH recursor such as the large CDNs / google / quad9, DNS4EU, etc.)
* active scanning data (which pages are hosted on which IPs?)
* A large corpus of HTTP Host headers (not everyone is going to switch immediately to ECH)
* Tor exit node traffic 
etc.

Furthermore, correlation can be done on typical patterns such as fingerprints of traffic streams of static pages.

We refer to existing materials on the subject of "Encrypted (Network) Traffic Classification".
Examples include:

* <https://www.sciencedirect.com/science/article/pii/S2090447923002502>
* <https://ieeexplore.ieee.org/document/8622812>
* <https://www.mdpi.com/2073-8994/13/6/1080>

