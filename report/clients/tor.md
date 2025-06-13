# TOR Network

Currently, Encrypted ClientHello (ECH) is not supported on the TOR network, primarily because the Firefox foundation mandates the use of DNS over HTTPS (DoH) for ECH functionality, while TOR disables DoH in order to uphold user privacy.
TOR’s architecture is designed to enhance security and privacy, which mitigates the necessity for the additional layers that DoH and ECH provide. By operating through a decentralized network of volunteer-run relays, TOR ensures that user data remains obscured from potential surveillance.
Contrary to Do53 and DoH, TOR employs an alternative approach, utilizing DNS over the TOR network and subsequently through the exit node.
TOR inherently addresses the concerns that both DoH and ECH aim to resolve, particularly through its TOR onion services.

- Detailed explanation on TOR's non-usage of DoH can be found here: <https://lists.torproject.org/mailman3/hyperkitty/list/tor-dev@lists.torproject.org/thread/6GDO7CYEFIKID7QQCRVYVFNIVETWWWWY/#6ZBFGNSRPWRCEO7PVPSHHVLAOGF7KN3C>
- Discussion on DNS over HTTPS (DoH) in TOR: <https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/30753>
- Discussion on Encrypted ClientHello (ECH) in TOR: <https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/42144>
