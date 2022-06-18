//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pet.g.dart';

/// Pet
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [tag] 
abstract class Pet implements Built<Pet, PetBuilder> {
    @BuiltValueField(wireName: r'id')
    int get id;

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'tag')
    String? get tag;

    Pet._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PetBuilder b) => b;

    factory Pet([void updates(PetBuilder b)]) = _$Pet;

    @BuiltValueSerializer(custom: true)
    static Serializer<Pet> get serializer => _$PetSerializer();
}

class _$PetSerializer implements StructuredSerializer<Pet> {
    @override
    final Iterable<Type> types = const [Pet, _$Pet];

    @override
    final String wireName = r'Pet';

    @override
    Iterable<Object?> serialize(Serializers serializers, Pet object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(int)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        if (object.tag != null) {
            result
                ..add(r'tag')
                ..add(serializers.serialize(object.tag,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Pet deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PetBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'tag':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.tag = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

