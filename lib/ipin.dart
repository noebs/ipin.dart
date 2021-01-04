library ipin;

import 'package:simple_rsa/simple_rsa.dart';

class Ipin {
  final String clearIpin;
  final String pubKey;
  final String uuid;

  Ipin({this.clearIpin, this.pubKey, this.uuid});

  Future<String> encrypt() async {
    String ipin = await encryptString(this.uuid + this.clearIpin, this.pubKey);
    return ipin;
  }
}
