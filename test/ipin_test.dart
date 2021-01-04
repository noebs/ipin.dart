import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';

import 'package:ipin/ipin.dart';
import 'package:uuid/uuid.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('adds one to input values', () async {
    final key =
        "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANx4gKYSMv3CrWWsxdPfxDxFvl+Is/0kc1dvMI1yNWDXI3AgdI4127KMUOv7gmwZ6SnRsHX/KAM0IPRe0+Sa0vMCAwEAAQ==";
    // final id = Uuid().v4();
    final id = Uuid().v4();
    final ipin = await Ipin(clearIpin: "0000", uuid: id, pubKey: key).encrypt();
    log(id, name: "uuid");
    expect(ipin, "22121");
  });
}
