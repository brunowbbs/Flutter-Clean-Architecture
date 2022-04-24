import 'package:clean_arch/layers/domain/entities/car_entity.dart';
import 'package:clean_arch/layers/domain/repositories/save_favorite_car_repository.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.valor > 2;
  }
}
