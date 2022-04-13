import 'dart:io';

void main(List<String> args) {
  displayResult();
}

double inputNum() {
  stdout.write('Enter the value ');
  return double.parse(stdin.readLineSync()!);
}

double add(double a, double b) {
  return a + b;
}

double sub(double a, double b) {
  return a - b;
}

double mul(double a, double b) {
  return a * b;
}

double div(double a, double b) {
  if (b == 0) {
    print('Denominator can not be 0 ');
  }
  return (a / b);
}

void displayResult() {
  String? operator;

  stdout.write('Enter the operation: ');
  operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      {
        print(add(inputNum(), inputNum()));
        break;
      }

    case '-':
      {
        print(sub(inputNum(), inputNum()));
        break;
      }

    case '*':
      {
        print(mul(inputNum(), inputNum()));
        break;
      }

    case '/':
      {
        print(div(inputNum().toDouble(), inputNum().toDouble()));
        break;
      }
    default:
      {
        if (operator != 'e') {
          print('Invalid operator');
          break;
        } else {
          break;
        }
      }
  }
}
