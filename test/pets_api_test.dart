import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PetsApi
void main() {
  final instance = Openapi().getPetsApi();

  group(PetsApi, () {
    // Create a pet
    //
    //Future createPets() async
    test('test createPets', () async {
      // TODO
    });

    // List all pets
    //
    //Future<BuiltList<Pet>> listPets({ int limit }) async
    test('test listPets', () async {
      // TODO
    });

    // Info for a specific pet
    //
    //Future<Pet> showPetById(String petId) async
    test('test showPetById', () async {
      // TODO
    });

  });
}
