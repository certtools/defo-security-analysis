# Downgrade attacks

If a network operator does not want to allow the typical DoH servers, he/she essentially only has the option to block those. However, since clients will still try to use DNS over classical means then, the attacker has the possibility to promote his/her tampered recursive DNS server.
Essentially this results in a downgrade attack on ECH as well, since DNS is a precondition to establishing a session with an ECH server.

Of course, when the setup is working, the incremental security upgrade that ECH gives (according to what it was intended to do), is not to be dismissed.

# Mandated use of DoH

On the other hand, if we require DoH/DoT, we essentially play into the hands of those who centralize recursive DNS servers. See the arguments on centralization in the introduction.

# DNSSEC is de-facto mandatory

While DNS is complex, adding DNSSEC makes it even more complex. 
However, to protect against wrong DNS answers by byzantine recursors, DNSSEC will be de-facto mandatory for a secure ECH protocol.

