* The web server **MUST** ensure that `.well-known/origin-svcb` is well protected.
* The web server **MUST** ensure that `.well-known/origin-svcb` does not contain any private keys.

## Attacks against syncing the ZF with the CFS / backend

If we look at the (at the time of writing this report) most current version of the WKECH Draft[^1], then we can identify a couple of weaknesses in the interplay between WKECH and ECH:

1. The synchronization between the ZF and the CFS is done strictly secured via HTTPS.
2. If an attacker manages to skew the timing info (for example by controlling the clock), this could result in invalid times for the `regeninterval`. However, it should be noted that if an attacker has these capabilities, targets other than ECH key regeneration intervals may have bigger effects.

### Attacks against syncing the ZF and CFS

Assuming a state-sponsored attacker, we can assume this attacker has access to a CA and may issue arbitrary certificates.
Since the connection between the ZF and CFS (according to the draft) MUST go over HTTPS, we could perform a Man-In-The-Middle attack[^3] on this HTTPS conversation. Currently the standard does not recommend certificate pinning, CA pinning (CAA)[^2] or similar techniques to counter this.

Following the protocol specs in draft-ietf-tls-wkech-07, we can read *"An empty endpoints array means that all HTTPS records that the ZF has published for the origin should be deleted"*. This would invite a MiTM to delete all ECHConfig zone file entries for the given domains. Effectively forcing the clients to downgrade to pre-ECH connection mechanisms.

**Recommended mitigation strategy**: the draft authors might consider mandating certificate pinning or similar techniques.


[^1]: <https://datatracker.ietf.org/doc/html/draft-ietf-tls-wkech-07>

[^2]: <https://en.wikipedia.org/wiki/DNS_Certification_Authority_Authorization> <https://github.com/sftcd/wkesni/issues/44>

[^3]: <https://en.wikipedia.org/wiki/Man-in-the-middle_attack>
