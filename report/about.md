# About this report

The following security analysis tries to identify weaknesses in the ECH protocol (especially as it also interfaces with lots of other protocols).
It is part of the [DEfO project - Developing ECH for OpenSSL](https://defo.ie/).

In the DEfO project, task 9.x deals with:

>>>  Deployment Scenarios Analysis: there are many variations in how ECH can be deployed and the varying relationships between the client and server entities involved. There therefore remains a need to map out residual privacy leaks in such scenarios and how to plug those, given the existence of additional privacy mechanisms such as Qname Minimization, Oblivious DNS-over-HTTPS, and MASQUE.
>>> 
>>> This task will accumulate practical documentation (for deployers) and analyses covering these issues. It is clear ECH reduces metadata leakage, but it is not yet clear how censors might react. This task will audit and review the metadata in a properly functioning ECH interaction and explore remaining avenues for de-anonymisation, filtering, blocking and censorship. This touches relevant protocols required in an ECH setup, such as: DNS-over-HTTPS (DoH), DNS-over-TLS (DoT), OCSP (Online Certificate Status Protocol), certificate revocation list (CRLs), etc. We will also focus on “medium scale” web sites such as found on a University campus, smaller hosters or NREN member organisation – CDNs already see the benefits of ECH and have a clear path to deployment, but it is important to enable smaller, but still significant, scale organizations to enjoy the benefits of ECH. The task will result in one report.


