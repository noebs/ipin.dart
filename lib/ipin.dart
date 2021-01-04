/// Library ipin implements ipin encryption for EBS / noebs
/// payment cards in Sudan. It relies on crypton which uses only
/// dart code and doesn't rely on any OS-specific SDKs for encryption
library ipin;

import 'package:crypton/crypton.dart';

/// Ipin is the base class for encrypting cards. [Ipin] constructor
/// accepts [clearIpin] which is the raw clear IPIN we get from the user,
/// and [uuid] a UUID v4 string and [pubKey] the public key we get from noebs apis.
/// See more at https://docs.noebs.dev
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
