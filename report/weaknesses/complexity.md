# Overall concerns with complexity

The authors of this report want to emphasize that for solving the particular
problem which ECH tries to solve, we don't currently see an easier solution.
Hence, the ECH protocol achieves its goal. However, this comes at the cost of
added complexity. This complexity might come to haunt us later on.

Higher complexity leads to:
 
* issues and mistakes in configuring it properly -> things go wrong easily
* weaknesses between protocol layers: with many protocols interacting with each other, the interface between protocols is often the weak spot
* potential design omissions: there might be more hidden oversights in the design of the complex interplay between the protocols

The authors of this report acknowledge that solving the issue is not an easy task and no easier methods are known.
ECH as a protocol does its job at solving a particular issue. But at the cost of complexity. 
