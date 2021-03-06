class CarEntity {
  String placa;
  int qtdPortas;
  double valor;

  CarEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

  //Regras de negocio
  double get valorReal {
    return valor * qtdPortas;
  }

  setLogica() {
    if (this.valorReal > 10000.00) {
      this.valor *= 2;
    }
  }
}
