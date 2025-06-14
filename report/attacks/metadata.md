
# De-anonymization by Metadata
## Explicit: ECH usage

The ECH standard appears to be well designed minimizing metadata.

Only the usage of ECH itself is left as a suspicious marker, drawing the attention of censors to possibly interesting traffic. See [Censorship](../censorship.md) for more information.

## Implicit: DNS queries

As the [Deployment Overview](../deployment/overview.md) outlines, clients request the ECH configuration via DNS during the initial setup and for subsequent refreshes.
Since the recommended lifespan for the keys is one hour, clients must update their ECH keys at least once every hour.

Browsers utilize the same DNS-over-HTTPS (DoH) server across all installations, which presents several risks:

- Single point of failure
- Single point of truth
- Central point for de-anonymization attacks

These risks can be mitigated by using decentralized DoT, as with Do53, instead of central DoH servers.

Further, the WKECH standard could be used by browsers for key refreshment, reducing the metadata at DNS server operators.
