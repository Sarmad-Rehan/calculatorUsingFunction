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
        int firstNum = inputNum().toInt();
        displayResult(add(firstNum, inputNum().toInt()));
        break;
      }

    case '-':
      {
        int firstNum = inputNum().toInt();
        displayResult(sub(firstNum, inputNum().toInt()));
        break;
      }

    case '*':
      {
        int firstNum = inputNum().toInt();
        displayResult(mul(firstNum, inputNum().toInt()));
        break;
      }

    case '/':
      {
        double firstNum = inputNum();
        displayResult(div(firstNum, inputNum()));
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

double inputNum() {
  stdout.write('Enter the value ');
  return double.parse(stdin.readLineSync()!);
}

void displayResult(final res) {
  print(res);
}
