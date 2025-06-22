
# De-anonymization by Metadata
## Explicit: ECH usage

XXX Feedback - 10.1.1: GREASE needs mention here

The ECH standard appears to be well designed minimizing metadata.

Only the support of ECH by clients in itself is left as a slightly suspicious marker.
See [Censorship](../censorship.md) for more information.

The GREASE mitigation effectively prevents that censors may use the existance of an ECH Extension in the Client Hello as suspicious marker, as all clients supporting the standard - including major browsers - should always send a GREASE `encrypted_client_hello` extension also if ECH is not in use.
XXX check if it is the case
## Implicit: DNS queries

XXX Feedback - 10.1.2: the one hour thing is just what CF did and we followed, there's no RECOMMENDED in the spec
XXX Feedback - 10.1.2: what is decentralised DoH? there's >1 such thing so a ref to what' s meant here would be good, as e.g.- spraying DNS queries over >1 recursive isn't effective longer term
XXX Feedback - 10.1.2: "Further, the WKECH standard could be used by browsers for key refreshment, reducing the metadata at DNS server operators." yes, at the expense of a round-trip, which is more or less the same as `retry-configs`
XXX Feedback speaking of `retry-configs` - that probably warrants some mention too

As the [Deployment Overview](../deployment/overview.md) outlines, clients request the ECH configuration via DNS during the initial setup and for subsequent refreshes.
Since the recommended lifespan for the keys is one hour, clients must update their ECH keys at least once every hour.

Browsers utilize the same DNS-over-HTTPS (DoH) server across all installations, which presents several risks:

- Single point of failure
- Single point of truth
- Central point for de-anonymization attacks

These risks can be mitigated by using local decentralized resolvers over DoT, as with Do53, instead of central DoH servers.

Further, the WKECH standard could be used by browsers for key refreshment, reducing the metadata at DNS server operators.
