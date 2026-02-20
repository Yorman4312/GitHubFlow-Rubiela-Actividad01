import 'dart:io';
import './distanciaRecorrida.dart';
import './promedioNotas.dart';
import './puntajeFutbol.dart';
import './plantillaEmpleado.dart';
import './hipotenusa.dart';
import './cAf.dart';
import './fibonnaci.dart';

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
    print(' 7. Serie Fibonacci');
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

        if (cantidad <= 0) {
          print('Debe ingresar al menos una nota.');
          break;
        }

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
        print('--- Serie Fibonacci ---');
        stdout.write('Mostrar serie hasta qué número máximo? ');
        int limite = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        print('');
        fibonacci(limite);
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