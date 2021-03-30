import 'dart:io';

import 'package:ds_p1_s3/prestamo.dart';
import 'Cliente.dart';
import 'CompruebaRentabilidad.dart';
import 'Filtro.dart';

void main(){
  Cliente miCliente = new Cliente();
  Filtro rentabilidad = new CompruebaRentabilidad();

  miCliente.gestorFiltros.setFiltros(rentabilidad);
  while(true) {
    miCliente.pedirPrestamo(miCliente.rellenarFormulario());
    if(miCliente.miPrestamo.interes != null)
      print('Finalmente el préstamo es de ${miCliente.miPrestamo.importe.toStringAsFixed(2)} € a pagar en ${miCliente.miPrestamo.num_cuotas} meses. Interés del ${miCliente.miPrestamo.interes.toStringAsFixed(2)} \n ');
    sleep(Duration(seconds:3));
  }

}