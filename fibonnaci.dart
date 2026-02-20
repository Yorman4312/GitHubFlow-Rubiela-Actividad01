// 7. Fibonacci
void fibonacci(int limite) {
  print("Serie Fibonacci:");

  int a = 0;
  int b = 1;

  if (limite >= 0) print(a);
  if (limite >= 1) print(b);

  while (true) {
    int siguiente = a + b;

    if (siguiente > limite) {
      break;
    }

    print(siguiente);

    a = b;
    b = siguiente;
  }
}