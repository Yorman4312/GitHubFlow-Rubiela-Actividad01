import 'dart:io';
import 'dart:math';

void main() {
  int opcion = 0;

  print('==========================================');
  print('     BIENVENIDO A LA APLICACIÓN DE CÁLCULO');
  print('==========================================');

  while (opcion != 8) {
    print('');
    print('---------- MENÚ PRINCIPAL ----------');
    print(' 1. Distancia recorrida de un automóvil');
    print(' 2. Promedio de notas de un estudiante');
    print(' 3. Puntaje de un equipo de fútbol');
    print(' 4. Planilla de un empleado');
    print(' 5. Hipotenusa de un triángulo rectángulo');
    print(' 6. Convertir Celsius a Fahrenheit');
    print(' 7. Serie de Fibonacci');
    print(' 8. Salir');
    print('-------------------------------------');
    stdout.write(' Seleccione una opción: ');

    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (opcion) {

      case 1:
        print('');
        print('--- Distancia Recorrida ---');
        stdout.write('Ingrese la velocidad (km/h): ');
        double v = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        stdout.write('Ingrese el tiempo (horas): ');
        double t = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        print('');
        distanciaRecorrida(v, t);
        break;

      case 2:
        print('');
        print('--- Promedio de Notas ---');
        stdout.write('¿Cuántas notas desea ingresar? ');
        int cantidad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        List<double> notas = [];
        for (int i = 1; i <= cantidad; i++) {
          stdout.write('Ingrese la nota $i: ');
          double nota = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
          notas.add(nota);
        }
        print('');
        promedioNotas(notas);
        break;

      case 3:
        print('');
        print('--- Puntaje del Equipo de Fútbol ---');
        stdout.write('Ingrese la cantidad de victorias: ');
        int victorias = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        stdout.write('Ingrese la cantidad de empates: ');
        int empates = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        stdout.write('Ingrese la cantidad de derrotas: ');
        int derrotas = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        print('');
        calcularPuntaje(victorias, empates, derrotas);
        break;

      case 4:
        print('');
        print('--- Planilla del Empleado ---');
        stdout.write('Ingrese el nombre del empleado: ');
        String nombre = stdin.readLineSync() ?? '';
        stdout.write('Ingrese las horas laboradas en el mes: ');
        double horas = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        stdout.write('Ingrese la tarifa por hora: ');
        double tarifa = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        print('');
        calcularDevengado(nombre, horas, tarifa);
        break;

      case 5:
        print('');
        print('--- Hipotenusa del Triángulo Rectángulo ---');
        stdout.write('Ingrese el cateto 1: ');
        double cateto1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        stdout.write('Ingrese el cateto 2: ');
        double cateto2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        print('');
        calcularHipotenusa(cateto1, cateto2);
        break;

      case 6:
        print('');
        print('--- Convertir Celsius a Fahrenheit ---');
        stdout.write('Ingrese la temperatura en Celsius: ');
        double celsius = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        print('');
        celsiusAFahrenheit(celsius);
        break;

      case 7:
        print('');
        fibonacci();
        break;

      case 8:
        print('');
        print('==========================================');
        print('   Gracias por usar la aplicación. ¡Hasta luego!');
        print('==========================================');
        break;

      default:
        print('');
        print('Opción no válida. Por favor ingrese un número del 1 al 8.');
        break;
    }
  }
}

// 1. Distancia recorrida de un automovil con velocidad constante
double distanciaRecorrida(double v, double t) {
  double d = v * t;
  print('La distancia recorrida es: $d km');
  return d;
}

// 2. Promedio de notas de un estudiante
double promedioNotas(List<double> notas) {
  double suma = 0;
  for (double nota in notas) {
    suma += nota;
  }
  double promedio = suma / notas.length;
  print('El promedio de notas es: $promedio');
  return promedio;
}

// 3. Puntaje para un equipo de fútbol basado en los resultados de los partidos
int calcularPuntaje(int victorias, int empates, int derrotas) {
  int puntos = (victorias * 3) + (empates * 1) + (derrotas * 0);
  print('Partidos ganados:   $victorias');
  print('Partidos empatados: $empates');
  print('Partidos perdidos:  $derrotas');
  print('Puntos totales:     $puntos');
  return puntos;
}

// 4. Planilla de un empleado
double calcularDevengado(String nombre, double horasLaboradas, double tarifaHora) {
  double totalDevengado = horasLaboradas * tarifaHora;
  print('Nombre del empleado: $nombre');
  print('Horas laboradas:     $horasLaboradas');
  print('Total devengado:     \$$totalDevengado');
  return totalDevengado;
}

// 5. Calcular la hipotenusa de un triángulo rectángulo
double calcularHipotenusa(double cateto1, double cateto2) {
  double hipotenusa = sqrt(pow(cateto1, 2) + pow(cateto2, 2));
  print('La hipotenusa del triángulo rectángulo es: $hipotenusa');
  return hipotenusa;
}

// 6. Transformar Celsius a Fahrenheit
double celsiusAFahrenheit(double celsius) {
  double fahrenheit = (celsius * 9 / 5) + 32;
  print('$celsius °C equivalen a $fahrenheit °F');
  return fahrenheit;
}

// 7. Serie de Fibonacci (números menores o iguales a 100)
void fibonacci() {
  print('--- Serie de Fibonacci (hasta 100) ---');
  int a = 0;
  int b = 1;

  stdout.write('$a, $b');

  while (true) {
    int siguiente = a + b;
    if (siguiente > 100) break;
    stdout.write(', $siguiente');
    a = b;
    b = siguiente;
  }

  print('');
}