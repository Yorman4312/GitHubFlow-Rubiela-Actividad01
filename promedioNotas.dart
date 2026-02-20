// 2. Promedio de notas
double promedioNotas(List<double> notas) {
  double suma = 0;
  for (double nota in notas) {
    suma += nota;
  }
  double promedio = suma / notas.length;
  print('El promedio de notas es: $promedio');
  return promedio;
}