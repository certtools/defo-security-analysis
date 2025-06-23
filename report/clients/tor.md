# Tor Network

Currently, Encrypted ClientHello (ECH) is not supported on the Tor network.
Tor’s architecture is designed well to enhance security and privacy, reducing the necessity for the additional layers that DoH and ECH provide.
Also, Tor addresses the concerns that both DoH and ECH aim to resolve through its Tor onion services.

Previously, Firefox mandated using DNS over HTTPS (DoH) for ECH functionality (see Section [Browsers](browsers.md)), which was a blocker as Tor does not use or support DoH.
Contrary to DoT and DoH, Tor employs an alternative approach for Name resolution inside the Tor network[^1].

There are ongoing discussions on whether and how DoH can benefit for the users' privacy and how it needs to be configured and implemented.
For detailed information, we refer to the discussion of the Tor community on [DNS over HTTPS (DoH) in Tor](https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/30753) and on [Encrypted ClientHello (ECH) in Tor](https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/42144).
For more information on how Tor protects their users' privacy, please refer to the [Tor website](https://support.torproject.org/censorship/).

[^1]: [Tor specifications: Remote hostname lookup](http://i3xi5qxvbrngh3g6o7czwjfxwjzigook7zxzjmgwg5b7xnjcn5hzciad.onion/tor-spec/remote-hostname-lookup.html), [Opening a new stream: The begin/connected handshake](http://i3xi5qxvbrngh3g6o7czwjfxwjzigook7zxzjmgwg5b7xnjcn5hzciad.onion/tor-spec/opening-streams.html#opening)
