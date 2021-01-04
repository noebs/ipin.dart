
## [0.0.3] - 1/5/2021

* we removed dependancy on simple_rsa and we are using crypton instead. Crypton is _testable_ and doesn't
rely on external OS-specific code to run. This is really important for us to ensure the reliability of our systems.

* we also removed the uuid dependancy, it is up to the library user to supply their UUID v4



## [0.0.2] - 1/4/2021

* change repo url
* add documentations for importing `ipin` in flutter code



## [0.0.1] - 1/4/2021

* Adding support for ipin encryption

A little history here, the code was ported from Ahmed's code (https://github.com/adonese/crypto/tree/master/ipin.dart), which is loosely based off of Fakhri's ipin encryption, written in angular (https://github.com/adonese/crypto/tree/master/ipin.js) (which was also a port of go / wasm code written by yours truly that was ported off of a java code!)


