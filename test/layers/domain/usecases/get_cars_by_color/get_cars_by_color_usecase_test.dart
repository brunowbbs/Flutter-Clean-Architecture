import 'package:clean_arch/layers/domain/entities/car_entity.dart';
import 'package:clean_arch/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:clean_arch/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(
    "Deve retornar uma instancia de carro, quando passado qualquer cor",
    () {
      GetCarsByColorUsecase useCase = GetCarsByColorUsecaseImp();
      var resultado = useCase("blue");

      expect(resultado, isInstanceOf<CarEntity>());
    },
  );

  test("Deve retornar um carro de quatro portas, quando vermelho", () {
    GetCarsByColorUsecase useCase = GetCarsByColorUsecaseImp();

    var resultado = useCase("red");
    expect(resultado.qtdPortas, 4);
  });

  test(
      "Deve retornar um carro de duas portas, quando qualquer cor, exceto vermelho",
      () {
    GetCarsByColorUsecase useCase = GetCarsByColorUsecaseImp();

    var resultado = useCase("green");
    expect(resultado.qtdPortas, 2);
  });
}
