# Attack and Analysis plan

This document helps us structure our research

## Reading list

See [README.md](https://github.com/certtools/defo-security-analysis/blob/main/README.md#reading-material)

## Deployment scenarios

We will analyse small and medium scale operators and try to identify possible traps for misconfiguring and map out residual privacy leaks in such scenarios.
Where possible, we will recommend mitigation strategies.

Split mode is out of scope of this document, since it will mostly be used by very large setups (such as CDNs).

List of possible deployment scenarios:
* small to medium sized website hoster (world4you.com, Hetzner, ...)
* universities, NRENs

**Question**: what is the distribution number of domains / host? What if we remove the CDNs? How does that look like? What is the effort for the smaller hosts (hosters) vs. benefit for them?
Does ECH pay off for them? If not, it will not be widely deployed in these scenarios.


### Attacks / security considerations per deployment scenario

XXX per scenario, list all possible attack possibilities and if possible how to mitigate them/counter them.

## Global scenario considerations

## Remaining metadata
review the metadata in a properly functioning ECH interaction and explore remaining avenues for de-anonymisation, filtering, blocking and censorship.

### .RU case ...

* https://community.cloudflare.com/t/access-issues-in-russia-unable-to-disable-ech-in-free-plan/733401
* https://therecord.media/russia-blocks-thousands-of-websites-that-use-cloudflare-service

"The Russian internet regulator also recommended local website owners switch to domestic CDN services"

### other ways to block ECH Config

#### DNS

Is there something like certificate pinning?

### Other downgrade attacks?

## Other de-anonymization techniques based on correlating data sets
* pDNS
* clustering of ECHConfig servers + fingerprinting traffic patterns (timing, packet sizes, etc.). See also Blake Andersson's talk at DeepSec vienna
  * https://blogs.cisco.com/security/tls-fingerprinting-in-the-real-world
  * https://blogs.cisco.com/security/detecting-encrypted-malware-traffic-without-decryption 
