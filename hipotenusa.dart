import 'dart:math';

// 5. Hipotenusa
double calcularHipotenusa(double cateto1, double cateto2) {
  double hipotenusa = sqrt(pow(cateto1, 2) + pow(cateto2, 2));
  print('La hipotenusa del triángulo rectángulo es: $hipotenusa');
  return hipotenusa;
}