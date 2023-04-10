// import 'package:flutter_test/flutter_test.dart';
// import 'package:marvel_catalog/core/app_exception.dart';
// import 'package:marvel_catalog/features/characters/data/errors/no_connection_exception.dart';
// import 'package:marvel_catalog/features/characters/data/errors/server_exception.dart';
// import 'package:marvel_catalog/features/characters/data/errors/unknown_exception.dart';
// import 'package:marvel_catalog/features/characters/domain/entities/character_data_wrapper.dart';
// import 'package:marvel_catalog/features/characters/domain/repositories/characters_repository.dart';
// import 'package:marvel_catalog/features/characters/domain/usecases/get_character_by_id_usecase.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:result_dart/result_dart.dart';

// import '../../../mocks/character_data_wrapper_mock.dart';

// class MockCharactersRepository extends Mock implements ICharactersRepository {}

// void main() {
//   late GetCharacterByIdUsecase usecase;
//   late ICharactersRepository repository;

//   setUp(() {
//     repository = MockCharactersRepository();
//     usecase = GetCharacterByIdUsecase(repository);
//   });

//   const tCharacterId = '1016825';
//   const tErrorMessage = 'Erro de servidor';

//   test('should get a CharacterDataWrapper for a given id from the repository',
//       () async {
//     when(() => repository.getById(tCharacterId)).thenAnswer(
//       (_) async => Result.success(tCharacterDataWrapper),
//     );

//     final result = await usecase(tCharacterId);
//     expect(result, Result.success(tCharacterDataWrapper));

//     verify(() => repository.getById(tCharacterId)).called(1);
//   });

//   test('should return a NoConnectionException when don\'t succeed', () async {
//     when(() => repository.getById(tCharacterId))
//         .thenAnswer((_) async => Result.failure(const NoConnectionException()));

//     final result = await usecase(tCharacterId);

//     expect(
//       result,
//       Result<CharacterDataWrapper, AppException>.failure(
//         const NoConnectionException(),
//       ),
//     );
//     verify(() => repository.getById(tCharacterId)).called(1);
//   });

//   test('should return a ServerException  when don\'t succeed', () async {
//     when(() => repository.getById(tCharacterId)).thenAnswer(
//         (_) async => Result.failure(const ServerException(tErrorMessage)));

//     final result = await usecase(tCharacterId);

//     expect(
//       result,
//       Result<CharacterDataWrapper, AppException>.failure(
//         const ServerException(tErrorMessage),
//       ),
//     );
//     verify(() => repository.getById(tCharacterId)).called(1);
//   });
//   test('should return a UnknownException  when don\'t succeed', () async {
//     when(() => repository.getById(tCharacterId)).thenAnswer(
//         (_) async => Result.failure(const UnknownException(tErrorMessage)));

//     final result = await usecase(tCharacterId);

//     expect(
//       result,
//       Result<CharacterDataWrapper, AppException>.failure(
//         const UnknownException(tErrorMessage),
//       ),
//     );
//     verify(() => repository.getById(tCharacterId)).called(1);
//   });
// }
