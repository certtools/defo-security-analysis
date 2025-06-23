# Intended deactivation

Implementing Encrypted Client Hello (ECH) in organizations that succumb to specific IT security requirements (ISO standards, NIS2, etc) presents several challenges that may lead them to deactivate ECH usage entirely.

## Incident Detection and Network Monitoring

Many security tools depend on the Server Name Indication (SNI) for threat detection, content filtering, and identifying malicious domains.
Losing this information with ECH, organizations may struggle to maintain visibility into network traffic.

## Incident Response

Obscured connection details can slow down or hinder incident investigations.
