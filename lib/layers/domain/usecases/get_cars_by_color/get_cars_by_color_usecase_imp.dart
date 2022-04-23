import 'package:clean_arch/layers/domain/entities/car_entity.dart';
import 'package:clean_arch/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';

//So podemos importar arquivos da camada de domínio. (Não conhecemos o mundo externo  )

class GetCarsByColorUsecaseImp implements GetCarsByColorUsecase {
  @override
  CarEntity call(String color) {
    if (color.contains('red')) {
      return CarEntity(placa: "ABC1234", qtdPortas: 4, valor: 50000.00);
    }

    return CarEntity(placa: "QWE4321", qtdPortas: 2, valor: 30000.00);
  }
}
