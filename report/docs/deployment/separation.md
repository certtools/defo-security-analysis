## Separation issues
### Network separations

CFS and DNS can be in separate networks with firewall rules preventing any outgoing connection from the CFS to internal networks and for the DNS server incoming connections from CFS network ranges
### Process separations



### Organizational separations

In the same way as a lot of IT services are outsources (web, e-mail, etc.) DNS Servers may be operated by third parties, e.g. a registrar, a DDoS protector etc. Thus, there is no direct access via SSH to the server administration, but rather via websites and APIs.

The let's encrypt project had the same challenge when starting with the ACME dns-01 challenge. As a result, a lot of ACME clients ([go-acme](https://go-acme.github.io/lego/dns/index.html), [posh](https://poshac.me/docs/v4/Plugins/), [acme.sh](https://github.com/acmesh-official/acme.sh/wiki/dnsapi) etc.) implemented support for a lot of provider's APIs. The same effort will become necessary for the Zone Factory software. Potentially existing code from ACME-projects could be re-used to reduce the expenses.