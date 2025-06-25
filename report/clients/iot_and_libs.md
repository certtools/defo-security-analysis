# Libraries and Devices in the Internet of Things

## Internet of Things

The Internet of Things (IoT) is formed of a vast range of device types that typically have a significantly longer life-cycle compared to traditional internet-connected devices like clients and servers.
Their applications can range from huge medical imaging tools to tiny gadgets.
The extended lifespan and - in many cases - great certification efforts lead to variable software update cycles.
First, the roll-out of ECH on such devices poses a special challenge.
And further, when a vulnerability or bug is identified within the software stack, the challenge of rolling out the necessary updates becomes substantially more complex.

Moreover, numerous IoT devices lack automatic update capabilities at all, and in some instances, these updates are not feasible as well.
The underlying software quality often suffers as well, driven by constraints related to financial resources and the sheer scale of development.
Paradoxically, due to the critical nature of maintaining device security amid the difficulties associated with updates, the quality of the software must actually be higher to mitigate these risks effectively beforehand.

## Implications by Packaging

TLS libraries that are often packaged by other software provided by package management systems[^1].
They might also face a similar challenge as IoT devices, but to a much smaller extent.
Operating system providers for are keen on stability, new features are often released in batches as major/minor releases. For server systems these span can in practice be five years or more.
The percentage of early adopters will likely be very small, and only viable for those with strong incentives.

## Libraries and Programming Languages

To create a significant impact, ECH must be user-friendly and safe for developers, with integration into high-level APIs.
Currently, this is not fully realized, and work is ongoing to address this issue.
For updates on progress in this area, please refer to other reports from the Defo project.

For instance, to use ECH in CPython, the current proposal involves usage of low-level APIs[^2].
However, for ECH to achieve widespread adoption, it needs to be accessible through high-level APIs, such as httpx[^3], and be activated by default.

## Command Line Tools

The proposal for curl requires DoH[^4], similar to what Firefox implemented in the past.
However, this should only be considered an intermediate step. 

To encourage greater usage of Encrypted Client Hello (ECH), curl should also offer the ability to use ECH without the need for explicit DoH.
The command line switch to enable ECH (`--ech true`) seems reasonable at the moment and should later by active by default.

Further work is necessary in this area, particularly by adding support for more tools, especially wget[^5].

Without ECH, clients who do not implement it risk creating side channels that can leak domain names, leading to potential de-anonymization.


[^1]: <https://en.wikipedia.org/wiki/Package_manager>
[^2]: <https://github.com/defo-project/ech-dev-utils/blob/e375acd0a1ee4b8abe4f89d60cac5af624931c77/scripts/ech_url.py#L84-L104>
[^3]: <https://www.python-httpx.org/>
[^4]: <https://github.com/sftcd/curl/blob/25f2c38/docs/ECH.md#user-content-supporting-ech-without-doh>
[^5]: <https://github.com/defo-project/ech-dev-utils/blob/475fc17/howtos/wget.md>
