# Deployment Incentives

This section looks which organizations have interests in deploying ECH.

## Anti-Censor and Anti-Oppression

Various organizations that address humans in countries and regions with oppression and legal pressure, like human rights organisations have an interest in protecting their website vistors' identity and thus using ECH as well as protect their website behind CDNs to reduce the risk of de-anonymization by traffic correlation analysis.

In all regions, the same applies to whistle-blower platforms which are possible under close observation by political, legal or corporate organizations.
## Malware - C2 operators

Unencypted SNI/Client Hello and TLS Metadata (cipher suite lists, advertised extensions) are being used to identify malware-generated traffic, e.g.: <https://blogs.cisco.com/security/detecting-encrypted-malware-traffic-without-decryption>
Therefore operators of malware networks have an interest in staying stealthy and thus implementing ECH. Consequently, this will hinder these traffic-analysis.

Currently, the usage of ECH is very low and thus in itself suspicious. To hide their ECH traffic, malware operators may be inclined to increase the general usage of ECH.

## Pornography industry

 Starting with February 2019, South Korea started blocking TLS-encrypted traffic to sites forbidden by the policies, most prominently pornography.
The porn industry, being blocked, has therefore a commercial interest in using ECH, which allows them to reach customers in an entire 50-million-inhabitant country.

- [South Korea to Extend Site Blocking by Snooping on SNI - technadu.com, August 1st, 2021](https://www.technadu.com/south-korea-extend-site-blocking-snooping-sni/58125/)
- [South Korea is Censoring the Internet by Snooping on SNI Traffic - Bleepingcomputer.com, Fe-bruary 13th, 2019](https://www.bleepingcomputer.com/news/security/south-korea-is-censoring-the-internet-by-snooping-on-sni-traffic/)

## CDNs

CDNs can offer their customers ECH (shared mode) as part of their offerings, selling them a privacy feature for low internal costs as they profit highly from scaling effects.
For website owners that want to protect their visitors and offer them enhanced privacy, it is much easier and cheaper to go to CDNs than to operate ECH on their own, given the high complexity and costs. A equivalent effect is in progress since about 15 years in the email sector. As operating email services safely got increasingly complex and difficult, more and more organizations outsourced their email infrastructure to large email service providers.

For ECH's split mode the business incentive is lower than for shared mode.

## Small and medium size hosters, NRENs

only a customer requesting it? won't happen
which medium size hoster could benefit from ECH?
