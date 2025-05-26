### Non-pure-HTTPS traffic
#### Jitsi
- UDP/10000 Jitsi video bridge
- UDP/3478 STUN server (coturn)
- TCP/5349 fall-back connection for video/audio communication (in case the UDP connection did not work)
- TCP/443 (HTTPS) only for the UI, protected with ECH by default
#### Network Proxy
SOCKS, HTTPS
#### OCSP and CRL
Downloaded via HTTP but signed by the CA
Blocking the access to the lists is possible with packet inspection due to the traffic being unencrypted
Browser soft-fail by default
OCSP is dead: https://letsencrypt.org/2022/09/07/new-life-for-crls/
Work ongoing to fix these issues
#### QUIC and SPDY
should work
### Firefox
#### Deliberately disabled
The Interop report mentions that ECH is disabled deliberately when local interception software is detected, and also with ISP- or state-level censorship