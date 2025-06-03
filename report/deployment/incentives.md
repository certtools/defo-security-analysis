# Deployment Incentives

which medium size hoster could benefit from ECH?
what are the incentives?

## Anti-Censor and Anti-Oppression

Whistle-blower platforms, human rights organisations

## Malware - C2 operators

`ClientHello` and TLS Metadata (cipher suite lists, advertised extensiond) is used to identify malware-generated traffic: https://blogs.cisco.com/security/detecting-encrypted-malware-traffic-without-decryption

C2/malware operators implementing ECH could hinder these traffic-analysis.

Currently, the usage of ECH is very low and thus in itself suspicious. To hide their ECH traffic, malware operators may be inclined to increase the general usage of ECH.

## Pornography industry

 Starting with February 2019, South Korea started blocking TLS-encrypted traffic to sites forbidden by the policies, most prominently pornography.
 The porn industry being blocked has therefore a business case for using ECH, enabling them to reach customers in an entire 50-million-inhabitant country.

- [South Korea to Extend Site Blocking by Snooping on SNI - technadu.com, August 1st, 2021](https://www.technadu.com/south-korea-extend-site-blocking-snooping-sni/58125/)
- [South Korea is Censoring the Internet by Snooping on SNI Traffic - Bleepingcomputer.com, Fe-bruary 13th, 2019](https://www.bleepingcomputer.com/news/security/south-korea-is-censoring-the-internet-by-snooping-on-sni-traffic/)

## CDNs

No business model for split mode, but for shared mode if the customer pays additionally for it -> centralization

## Small and medium size hosters

only a customer requesting it? won't happen
