## Separation issues

### Network separations

CFS and DNS can be in separate networks with firewall rules preventing any outgoing connection from the CFS to internal networks and for the DNS server incoming connections from CFS network ranges

### Process separations

In large organisations we often observe that different teams are responible for different tasks. ECH deployments require that at least the team for DNS (ZF) and the team responsible for hosting services talk to each other. We are not commenting on how often this might be a problem.

In addition, some organisations have to deal with IT security reuglation standards (ISO certification, NIS2 law in Europe), might might impact the way how ECH is being deployed (which team does what, documents what, etc.). Since deployments of ECH pose new questions, we can't yet fully assess the impact of regulations on deployements. However, it is worth keeping an eye on so that future revisions of the ECH drafts can be deployed easier for organisations facing tight regulations.

### Organizational separations

In the same way as a lot of IT services are outsources (web, e-mail, etc.) DNS Servers may be operated by third parties, e.g. a registrar, a DDoS protector etc. Thus, there is no direct access via SSH to the server administration, but rather via websites and APIs.

The let's encrypt project had the same challenge when starting with the ACME dns-01 challenge. As a result, a lot of ACME clients ([go-acme](https://go-acme.github.io/lego/dns/index.html), [posh](https://poshac.me/docs/v4/Plugins/), [acme.sh](https://github.com/acmesh-official/acme.sh/wiki/dnsapi) etc.) implemented support for a lot of provider's APIs. The same effort will become necessary for the Zone Factory software. Potentially existing code from ACME-projects could be re-used to reduce the expenses.
