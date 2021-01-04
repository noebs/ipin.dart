library ipin;

// import 'package:simple_rsa/simple_rsa.dart';
import 'package:crypton/crypton.dart';

class Ipin {
  final String clearIpin;
  final String pubKey;
  final String uuid;

  Ipin({this.clearIpin, this.pubKey, this.uuid});

  String encrypt() {
    final k = RSAPublicKey.fromString(this.pubKey);
    final ipin = k.encrypt(this.uuid + this.clearIpin);
    // String ipin = await encryptString(this.uuid + this.clearIpin, this.pubKey);
    return ipin;
  }
}
