import 'package:ds_p1_s3/CuentaBancaria.dart';

class FormularioPrestamo{
  double cuantia;
  int cuotas;
  double interes;
  CuentaBancaria cuenta;

  FormularioPrestamo(double cuantia, int cuotas, double interes, CuentaBancaria cuenta){
    this.cuantia = cuantia;
    this.cuotas = cuotas;
    this.interes = interes;
    this.cuenta = cuenta;
  }
}