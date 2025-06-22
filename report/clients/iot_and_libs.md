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
## Libraries and Packaging

TLS libraries that are often packaged by other software of provided by [package management systems](https://en.wikipedia.org/wiki/Package_manager).
They might also face a similar challenge as IoT devices, but to a much smaller extent.
Operating system providers for are keen on stability, new features are often released in batches as major/minor releases. For server systems these span can in practice be five years or more.
The percentage of early adopters will likely be very small, and only viable for those with strong incentives.

## Command Line Tools

XXX Feedback - 8.2.3: probably due a reference to the curl work done with DEfO (still evolving)
XXX: Check wget implementation

Often settings for TLS configuration can only be enabled by less known obscure command-line flags.
Therefore, good default values for ECH are crucial.

Otherwise, they can impose a side-channel leaking domain names leading to de-anonymization.
