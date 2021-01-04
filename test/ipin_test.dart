import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';

import 'package:ipin/ipin.dart';

void main() {
  test('adds one to input values', () {
    final key =
        "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANx4gKYSMv3CrWWsxdPfxDxFvl+Is/0kc1dvMI1yNWDXI3AgdI4127KMUOv7gmwZ6SnRsHX/KAM0IPRe0+Sa0vMCAwEAAQ==";
    // final id = Uuid().v4();
    // final id = Uuid().v4();
    final id = "5b3d573e-44a9-4ae9-a112-0a4ad4b70db1";
    final ipin = Ipin(clearIpin: "0009", uuid: id, pubKey: key).encrypt();
    log(id, name: "uuid");
    expect(ipin, "22121");
  });
}
