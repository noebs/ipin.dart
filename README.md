# ipin

Library for IPIN encryption (for EBS and noebs).

## How to use it

```sh
$ # update pubspec.yaml with the library
```

```dart
import 'package:ipin/ipin.dart';

final key =
    "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANx4gKYSMv3CrWWsxdPfxDxFvl+Is/0kc1dvMI1yNWDXI3AgdI4127KMUOv7gmwZ6SnRsHX/KAM0IPRe0+Sa0vMCAwEAAQ==";
// final id = Uuid().v4();
final id = Uuid().v4();
final ipin = await Ipin(clearIpin: "0000", uuid: id, pubKey: key).encrypt();

// ipin is the new encrypted ipin block. NOTE you will to use `id` in UUID request field.

```


Visit [https://docs.noebs.dev](for more information).