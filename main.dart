import 'dart:io';

void main(List<String> args) {
  String? operator;
  print('Enter + to add');
  print('Enter - to subtract');
  print('Enter * to multiply');
  print('Enter / to divide');

  stdout.write('Enter the operation: ');
  operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      {
        int firstNum = inputNum();
        displayResult(add(firstNum, inputNum()));
        break;
      }

    case '-':
      {
        int firstNum = inputNum();
        displayResult(sub(firstNum, inputNum()));
        break;
      }

    case '*':
      {
        int firstNum = inputNum();
        displayResult(mul(firstNum, inputNum()));
        break;
      }

    case '/':
      {
        double firstNum = inputNum().toDouble();
        displayResult(div(firstNum, inputNum().toDouble()));
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

int inputNum() {
  stdout.write('Enter the value ');
  return int.parse(stdin.readLineSync()!);
}

int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

int mul(int a, int b) {
  return a * b;
}

double div(double a, double b) {
  if (b == 0) {
    print('Denominator can not be 0 ');
  }
  return (a / b);
}

void displayResult(final res) {
  print(res);
}
