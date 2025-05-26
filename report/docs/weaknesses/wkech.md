## Attacks against syncing the ZF with the CFS / backend

If we look at the (at the time of writing this report) most current version of the [WKECH Draft](https://datatracker.ietf.org/doc/html/draft-ietf-tls-wkech-07), then we can identify a couple of weaknesses in the interplay between WKECH and ECH:

1. syncing between the ZF and the CFS is done via HTTPS. 
2. If we manage to skew the timing info (for example by controlling the clock), we might create invalid times for the `regeninterval` )

### Attacks against syncing the ZF and CFS

Assuming a state-sponsored attacker, we can assume this attacker has access to a CA and may issue arbitrary certificates. 
Since the connection betwen the ZF and CFS (according to the draft) MUST go over HTTPS, we could MitM this HTTP conversation. Currently the standard does not recommend certificate pinning or similar techniques to counter this.

Following the protocol specs in draft-ietf-tls-wkech-07, we can read "An empty endpoints array means that all HTTPS records that the ZF has published for the origin should be deleted". This would invite a MiTM to delete all ECHConfig zone file entries for the given domains. Effectively forcing the clients to downgrade to pre-ECH connection mechanisms.

**Recommended mitigation strategy**: the draft authors might consider mandating certificate pinning or similar techniques. 
