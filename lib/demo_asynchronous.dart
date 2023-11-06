import 'dart:math';

void main() {
  // a = 5
  // b = 10
  // result = a + b - 3 + b - 1
  // var a = 5;
  // var b = 10;
  //
  // plus(a, b)
  //     .then((total1) => minus(total1, 3))
  //     .then((total2) => Future.error(Exception("Loi total 2")))
  //     .then((total3) => minus(total3, 1))
  //     .then((total4) => print(total4))
  //     .catchError((error) => print(error.toString()));

  calculator(3, 2)
      .then((value) => print(value));
}

// Future<int> plus(int a, int b) {
//   return Future.delayed(Duration(seconds: 1), () => a + b);
// }
//
// Future<int> minus(int a, int b) {
//   return Future.delayed(Duration(seconds: 1), () => a - b);
// }

Future<int> calculator(int a, int b) async {
  var value1 = await Future.delayed(Duration(seconds: 2), () {
    return a + b;
  });

  var value2 = await Future.delayed(Duration(seconds: 1), () {
    return a + b * 2;
  });

  return value1 + value2;
}