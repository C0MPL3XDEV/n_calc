import 'dart:collection';
import 'dart:math';

double factorial(double n) {
  double result = 1.0;

  for (int i = 1; i <= n; i++) {
    result *= i;
  }

  result += result * (n - n.truncate());

  return result;
}

class Functions {
  final Map<String, Function> operations = HashMap();
  final Map<String, double> constants = HashMap();

  Functions() {
    operations["+"] = (double a, double b) => a + b;
    operations["-"] = (double a, double b) => a - b;
    operations["*"] = (double a, double b) => a * b;
    operations["/"] = (double a, double b) => a / b;
    operations["!"] = (double a, double b) => a / b;
    operations["%"] = (double a, double b) => a % b;
    operations["^"] = (double a, double b) => pow(a, b);
    operations["!"] = (double a, double b) => factorial(a) * b;
    operations["log"] = (double a, double b) {
      if (b == e) {
        return log(a);
      } else if (b == 2.0) {
        return log(a) / ln2;
      } else if (b == 10.0) {
        return log(a) / ln10;
      } else {
        return log(a) / log(b);
      }
    };
    operations["sin"] = (double a, double b) => sin(a) * b;
    operations["cos"] = (double a, double b) => cos(a) * b;
    operations["tan"] = (double a, double b) => tan(a) * b;

    constants["e"] = e;
    constants["pi"] = pi;
  }

  bool checkOperation(String op) => operations.containsKey(op);
  Function? getOperation(String op) => operations[op];

  bool checkConstant(String c) => constants.containsKey(c);
  double? getConstant(String c) => constants[c];
}
