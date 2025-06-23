# De-anonymization by Metadata
## Explicit: ECH usage

The ECH standard appears to be well designed minimizing metadata.

Only the support of ECH by clients in itself is left as a slightly suspicious marker.
See [Censorship](../censorship.md) for more information.

The GREASE mitigation effectively prevents that censors may use the existence of an ECH Extension in the Client Hello as identifier for active ECH use, as all clients supporting the standard - including major browsers - should always send a GREASE `encrypted_client_hello` extension also if ECH is not in use.

## Implicit: DNS queries

As the [Deployment Overview](../deployment/overview.md) outlines, clients request the ECH configuration via DNS during the initial setup and for subsequent refreshes.

Browsers utilize the same DNS-over-HTTPS (DoH) server across all installations, which presents several risks:

- Single point of failure
- Single point of truth
- Central point for de-anonymization attacks

These risks can be mitigated by using local - decentralized - resolvers over DoT, as with Do53, instead of central DoH servers.

It needs to mentioned that only the initial request causes a DNS lookup for the ECH Config.
For the next key exchanges when the ECH key changes during the same user session, the server proactively sends the next ECH Config to the client with the `retry-config` ECH Extension.
This method only works if the lifetime of the ECH Config covers the time between two calls of the client.
The ECH key lifespan used by Cloudflare, which was then adopted by other players, is only one hour, which prevents effective caching.
The ECH standard does not contain a guideline or recommendation on key refresh interval, only that "It is RECOMMENDED that servers rotate keys regularly."[^1]

[^1]:  draft-ietf-tls-esni-25 section 10.10.5. Maintain Forward Secrecy
