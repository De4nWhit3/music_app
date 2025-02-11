import 'package:uuid/uuid.dart';

class UniqueId {
  UniqueId._(this.value);

  String value;

  factory UniqueId() {
    return UniqueId._(const Uuid().v4());
  }

  factory UniqueId.fromUniqueString(String uniqueString) {
    return UniqueId._(uniqueString);
  }
}

class SongId extends UniqueId {
  SongId._(super.value) : super._();

  factory SongId() {
    return SongId._(const Uuid().v4());
  }

  factory SongId.fromUniqueString(String uniqueString) {
    return SongId._(uniqueString);
  }
}
