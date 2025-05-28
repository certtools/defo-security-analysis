# Deployment considerations

This section addresses ECH deployment considerations. Where relevant, it will link to subsequent sections which details possible attacks against the protocols.

## Process overview

![WKECH flow](wkech-flow.png)

### Client process

I. To request a website, the browser first queries the A/AAAA record and the ECHConfig from the configured DoH/DoT server. The DoH/DoT server is either provided by the network owner or by a large CDN.

II. The DoH server queries the information at the autoritative DNS server via plain DNS, managed by the website operator.

II. The information is sent from the DNS server to the DoH server and potentially cached.

IV. The information is passed on to the client

V. Using the A/AAAA record and the ECHConfig, the browser requests the website from the web server

### Server process

1. The server (re-)generates the ECH keys in a defined interval (e.g. every 1 hour) for each configured domain
2. The server publishes the public ECH keys in the WKECH directories for each domain
3. The Zone Factory (ZF) requests the ECK keys for each configured domain in a configured interval (e.g. more often than 1 hour)
4. The CFS answers with the ECH keys
5. The ZF pushes the generated ECHConfig to the DNS server

## Webserver configuration

- Which component creates the ECH keys with the correct parameters?
- Which component rotates them, and reloads the webserver?
- and creates (or serves) the wkech directory, ensuring that only the pubkeys are exposed, not the private keys
- Triggering the ZF after every rotation (running separately, on another host)
- documentation: https://github.com/defo-project/ech-dev-utils#user-content-server-details

## Complexity of configuring the Zone Factory

The ZF needs to know
1. which well-known sites (`wkech`) to look at
2. when to refresh the keys (or in a fixed interval)
3. which zone files (located on which server) need to be updated

The ZDF needs write access to the zone file and needs to be able to reload the nameserver.
All of this flow is non-trivial for a sysadmin to configure and add possible steps which may break.

This sections looks at what could go wrong in case of misconfigurations or malicious attacks.

...
