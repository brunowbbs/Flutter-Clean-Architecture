import 'package:clean_arch/layers/domain/entities/car_entity.dart';
import 'package:clean_arch/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_arch/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:clean_arch/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.valor > 0 ? true : false;
  }
}

main() {
  test("Deve salvar um carro com sucesso, quando valor for maior que zero",
      () async {
    SaveFavoriteCarUsecase useCase =
        SaveFavoriteCarUsecaseImp(SaveFavoriteCarRepositoryImp());

    var car = CarEntity(placa: "ARC123", qtdPortas: 2, valor: 1);

    var result = await useCase(car);

    expect(result, true);
  });

  test(
      "Não deve salvar um carro com sucesso, quando valor for menor ou igual a zero",
      () async {
    SaveFavoriteCarUsecase useCase =
        SaveFavoriteCarUsecaseImp(SaveFavoriteCarRepositoryImp());

    var car = CarEntity(placa: "AVC123", qtdPortas: 2, valor: -1);

    var result = await useCase(car);

    expect(result, false);
  });
}
