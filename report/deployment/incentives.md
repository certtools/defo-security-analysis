# Deployment Incentives

As mentioned in the [overview](../index.md) section, we see a game-theoretic problem: most organizations that host web services might not have the proper incentives to protect the client's privacy without additional rewards: they have no incentive to do so. Instead, managing the complex ECH setup adds additional business continuity risks.

Therefore, this section looks at organizations that could be interested in deploying ECH.

Widespread use is **essential** for the success of ECH, as otherwise, the usage of ECH itself raises suspicion among censors.

## Anti-Censor and Anti-Oppression

Various organizations that address humans in countries and regions with oppression and legal pressure, like human rights organisations have an interest in protecting their website visitors' identity and thus using ECH as well as protecting their website behind CDNs to reduce the risk of de-anonymization by traffic correlation analysis.

In all regions, the same applies to whistle-blower platforms which are possible under close observation by political, legal or corporate organizations.

## Malware - C2 operators

Unencrypted SNI/Client Hello and TLS Metadata (cipher suite lists, advertised extensions) are being used to identify malware-generated traffic, e.g.: <https://blogs.cisco.com/security/detecting-encrypted-malware-traffic-without-decryption>

Therefore operators of malware networks have an interest in staying stealthy and thus implementing ECH. Consequently, this will hinder - but not disable - this traffic-analysis.

Currently, the usage of ECH is very low and thus in itself suspicious. To hide their ECH traffic, malware operators may be inclined to increase the general usage of ECH.

## Pornography industry

Starting with February 2019, South Korea started blocking TLS-encrypted traffic to sites forbidden by the policies, most prominently pornography.

The porn industry, being blocked, has therefore a commercial interest in using ECH, which allows them to reach customers in an entire 50-million-inhabitant country.

- [South Korea to Extend Site Blocking by Snooping on SNI - technadu.com, August 1st, 2021](https://www.technadu.com/south-korea-extend-site-blocking-snooping-sni/58125/)

- [South Korea is Censoring the Internet by Snooping on SNI Traffic - Bleepingcomputer.com, February 13th, 2019](https://www.bleepingcomputer.com/news/security/south-korea-is-censoring-the-internet-by-snooping-on-sni-traffic/)

## CDNs

CDNs can offer their customers ECH (shared mode) as part of their offerings, selling them a privacy feature for low internal costs as they profit highly from scaling effects.

For website owners who want to protect their visitors and offer them enhanced privacy, it is much easier and cheaper to go to CDNs than to operate ECH on their own, given the high complexity and costs. An equivalent effect is in progress for about 15 years in the email sector. As operating email services safely got increasingly complex and challenging, more and more organizations outsourced their email infrastructure to large email service providers.

For ECH's split mode the business incentive is lower than for shared mode, as in split mode the CDNs can sell fewer services to their customers.

## Small and Medium-Sized Hosting Providers and research and education institutions (NRENs)

As mapped out in the section [Deployment considerations](../deployment/overview.md), the required implementation effort is quite high and only scales for lots of websites.

Additionally, NRENs typically have a very decentralized infrastructure, so scaling effects won't take effect and [Separation of responsibility](../deployment/separation.md) cause additional barriers.

A group of security experts and IT service operators that we inquired about was very hesitant about the potential deployment of ECH, citing the significant effort and minor benefits.