# .well-known considerations 

This chapter analyzes potential security concerns of [draft-ietf-tls-wkech](https://datatracker.ietf.org/doc/html/draft-ietf-tls-wkech).

## Maturity of the solution

At the time of this writing, the proof of concept implements `wkech` via bash scripts, a python implementation is work-in-progress.

## ZF to CFS interaction

### forcing the ZF to delete the ECHconfig
What happens if the ZF connection to the CFS or backend can be intercepted by Eve? Cann the fetching of .well-known be done via HTTP as well or MUST it go via HTTPS? And what if I am China and have a root CA?
Could I force the ZF to receive:

```json
{
    ...
 "endpoints": [] 
}
```

This would effectively result in the ZF deleting all ECH Config records of the given domain in the authoritative DNS server . Resulting in a downgrade attack and disableing ECH completely for the given domain.

## timing attacks

* play with the regen interval
* play with GPS :)
