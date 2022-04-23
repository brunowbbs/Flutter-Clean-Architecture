import 'package:clean_arch/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarRepository {
  Future<bool> call(CarEntity carEntity);
}
