import 'dart:io';

void main(List<String> arguments) {
  print('Insira um número: ');
  String input = stdin.readLineSync() ?? '';
  int num;
  try {
    num = int.parse(input);

    if (num.isNegative) throw 'Número não pode ser negativo.';

    print('Soma: ${verifyNumber(num)}');
  } catch (e) {
    if (e.runtimeType == FormatException) {
      print('Valor inválido');
    } else {
      print(e);
    }
  }
}

int verifyNumber(int number) {
  int result = 0;

  for (int i = 1; i < number; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      result += i;
    }
  }
  return result;
}
