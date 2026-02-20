// 3. Puntaje fútbol
int calcularPuntaje(int victorias, int empates, int derrotas) {
  int puntos = (victorias * 3) + (empates * 1);
  print('Partidos ganados:  $victorias');
  print('Partidos empatados: $empates');
  print('Partidos perdidos:  $derrotas');
  print('Puntos totales:     $puntos');
  return puntos;
}