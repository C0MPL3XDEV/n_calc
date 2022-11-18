import 'package:n_calc/math/functions.dart';

class RPN {
  // Make RPN a singleton
  RPN._internal();
  static final RPN _instance = RPN._internal();
  Functions functions = Functions();

  static RPN getInstance() => _instance;

  double evaluate(String op) {
    List<double> numbers = [];
    List<String> parts = op.split(" ");

    for (String part in parts) {
      double? number = double.tryParse(part);
      if (number != null) {
        numbers.add(number);
      } else if (functions.checkConstant(part)) {
        numbers.add(functions.getConstant(part)!);
      } else {
        double b = numbers.removeLast();
        double a = numbers.removeLast();
        double result = functions.getOperation(part)!(a, b);
        numbers.add(result);
      }
    }

    return numbers[0];
  }

  bool checkValidity(String op) {
    int numbers = 0;
    int ops = 0;
    List<String> parts = op.split(" ");

    if (parts.length < 3) {
      return false;
    }

    for (String part in parts) {
      if (double.tryParse(part) != null || functions.checkConstant(part)) {
        numbers++;
      } else if (functions.checkOperation(part)) {
        if (numbers < 2) {
          return false;
        }
        ops++;
      } else {
        return false;
      }
    }

    return numbers == (ops + 1);
  }
}