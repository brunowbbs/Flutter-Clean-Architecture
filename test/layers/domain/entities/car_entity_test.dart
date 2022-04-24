import 'package:clean_arch/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("Espero que a entidade não seja nula", () {
    CarEntity carEntity = new CarEntity(
      placa: "ABC1234",
      qtdPortas: 4,
      valor: 87000.00,
    );

    expect(carEntity, isNotNull);
  });

  test("Espero que a quantidade de portas seja 2", () {
    CarEntity carEntity = new CarEntity(
      placa: "ABC1234",
      qtdPortas: 2,
      valor: 87000.00,
    );

    expect(carEntity.qtdPortas, 2);
  });

  test("Espero que o valor real seja 2000", () {
    CarEntity carEntity = new CarEntity(
      placa: "ABC1234",
      qtdPortas: 2,
      valor: 1000.00,
    );

    var resultadoEsperado = 2000.00;
    expect(carEntity.valorReal, resultadoEsperado);
  });

  test("Espero que o valor real seja 0", () {
    CarEntity carEntity = new CarEntity(
      placa: "ABC1234",
      qtdPortas: 0,
      valor: 1000.00,
    );

    var resultadoEsperado = 0.00;
    expect(carEntity.valorReal, resultadoEsperado);
  });

  test("Espero que o valor real seja 30000.00", () {
    CarEntity carEntity = new CarEntity(
      placa: "ABC1234",
      qtdPortas: 2,
      valor: 15000.00,
    );

    var resultadoEsperado = 30000.00;

    carEntity.setLogica();

    expect(carEntity.valor, resultadoEsperado);
  });
}
