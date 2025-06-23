# Tor Network

XXX Feedback - 8.3: FF no longer insists on DoH to use ECH, I wish I knew more about how Tor does DNS but haven't had the time

Currently, Encrypted ClientHello (ECH) is not supported on the Tor network, primarily because the Firefox foundation mandates the use of DNS over HTTPS (DoH) for ECH functionality, while Tor disables DoH in order to uphold user privacy.
Tor’s architecture is designed to enhance security and privacy, which mitigates the necessity for the additional layers that DoH and ECH provide. For more information how Tor protects their users' privacy, please refer to the [Tor website](https://support.torproject.org/censorship/).
Contrary to DoT and DoH, Tor employs an alternative approach, utilizing DNS over the Tor network and subsequently through the exit node.
Tor addresses the concerns that both DoH and ECH aim to resolve, through its Tor onion services.

- Detailed explanation on Tor's non-usage of DoH can be found here: <https://lists.torproject.org/mailman3/hyperkitty/list/tor-dev@lists.torproject.org/thread/6GDO7CYEFIKID7QQCRVYVFNIVETWWWWY/#6ZBFGNSRPWRCEO7PVPSHHVLAOGF7KN3C>
- Discussion on DNS over HTTPS (DoH) in Tor: <https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/30753>
- Discussion on Encrypted ClientHello (ECH) in Tor: <https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/42144>
