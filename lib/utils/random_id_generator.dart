import 'package:uuid/uuid.dart';

class RandId {
  
    String generateUniqueId() {
    final uuid = Uuid();
    return uuid.v4(); // Generates a version 4 (random) UUID
  }

}
