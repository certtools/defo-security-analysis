## Separation issues

### Network separations

The synchronization between the CFS server and the ZF can be achieved through two different methods: pulling and pushing.

**Pushing**: The CFS server triggers the ZF after generating new ECH keys. For security reasons, the CFS server and the DNS server may be located on separate networks, with firewall rules preventing any outgoing connections from the CFS to internal networks. Additionally, the DNS server can block incoming connections from the CFS network range.

**Pulling**: In this method, the ZF retrieves the keys from the CFS server using WKECH. The ZF must be made aware of when to refresh the keys for this approach. This can be done through high-frequency polling at the ZF.

Both methods have their drawbacks, and it is up to the operator to evaluate the limitations and choose the most suitable approach.

### Process separations

In large organisations we often observe that different teams are responsible for different tasks. ECH deployments require that at least the team for DNS (ZF) and the team responsible for hosting services talk to each other. We are not commenting on how often this might be a problem.

In addition, some organisations have to deal with IT security regulation standards (ISO certifications, laws such as NIS2), that might impact the way how ECH is being deployed (which team does what, documents what, etc.).
Since deployments of ECH pose new questions, we can't yet fully assess the impact of regulations on deployments.
However, it is worth keeping an eye on so that future revisions of the ECH drafts can be deployed easier for organisations facing tight regulations.

We have no information how often this may be hindering deployment.

### Organizational separations

In the same way as a lot of IT services are outsources (web, e-mail, etc.) DNS Servers may be operated by third parties, e.g. a registrar, a DDoS protector etc. Thus, there is no direct access via SSH to the server administration, but rather via websites and APIs.

The let's encrypt project had the same challenge when starting with the ACME *dns-01* challenge. As a result, a lot of ACME clients (go-acme[^1], posh[^2], acme.sh[^3] etc.) implemented support for a lot of provider's APIs. The same effort will become necessary for the Zone Factory software. Potentially existing code from ACME-projects could be re-used to reduce the expenses.


[^1]: <https://go-acme.github.io/lego/dns/index.html>
[^2]: <https://poshac.me/docs/v4/Plugins/>
[^3]: <https://github.com/acmesh-official/acme.sh/wiki/dnsapi>
