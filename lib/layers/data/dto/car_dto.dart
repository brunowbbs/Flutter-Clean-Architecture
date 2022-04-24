//Serve para fazer o DE PARA entre API e FRONTEND

import 'package:clean_arch/layers/domain/entities/car_entity.dart';

class CarDTO extends CarEntity {
  String placa;
  int quantidadePortas;
  double valorFinal;

  CarDTO({
    required this.placa,
    required this.quantidadePortas,
    required this.valorFinal,
  }) : super(valor: valorFinal, placa: placa, qtdPortas: quantidadePortas);

  toMap() {
    return {
      'placa': this.placa,
      'quantidadeDePortas': this.quantidadePortas,
      'valorFinal': this.valorFinal
    };
  }

  CarDTO fromMap(Map map) {
    return CarDTO(
      placa: map['placa'],
      quantidadePortas: map['quantidadePortas'],
      valorFinal: map['valorFinal'],
    );
  }
}
