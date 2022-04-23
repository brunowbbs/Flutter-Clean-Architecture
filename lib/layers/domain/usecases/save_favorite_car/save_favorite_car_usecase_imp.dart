import 'package:clean_arch/layers/domain/entities/car_entity.dart';
import 'package:clean_arch/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_arch/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

//A informação de onde vou salvar não é importante aqui.

//Posso chamar outros usecases
class SaveFavoriteCarUsecaseImp implements SaveFavoriteCarUsecase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  SaveFavoriteCarUsecaseImp(this._saveFavoriteCarRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    if (carEntity.valorReal > 10000.00) {
      carEntity.valor *= 2;
    }

    //interface callable (pode ser chamado diretamente, sem a notação de ponto)
    //this._saveFavoriteCarRepository.call(carEntity);
    return await this._saveFavoriteCarRepository(carEntity);
  }
}
