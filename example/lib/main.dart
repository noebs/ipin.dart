import 'package:ipin/ipin.dart';

void main() {
  final clearIpin = "0000";
  final uuid = "5b3d573e-44a9-4ae9-a112-0a4ad4b70db1";
  final pubKey =
      "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANx4gKYSMv3CrWWsxdPfxDxFvl+Is/0kc1dvMI1yNWDXI3AgdI4127KMUOv7gmwZ6SnRsHX/KAM0IPRe0+Sa0vMCAwEAAQ==";
  var ipin = Ipin(clearIpin: clearIpin, uuid: uuid, pubKey: pubKey).encrypt();
  print("ipin block is: ");
  print(ipin);
}
