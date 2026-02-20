// 4. Planilla empleado
double calcularDevengado(String nombre, double horasLaboradas, double tarifaHora) {
  double totalDevengado = horasLaboradas * tarifaHora;
  print('Nombre del empleado: $nombre');
  print('Horas laboradas: $horasLaboradas');
  print('Total devengado: \$$totalDevengado');
  return totalDevengado;
}