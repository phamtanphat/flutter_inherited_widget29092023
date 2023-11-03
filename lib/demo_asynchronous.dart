void main() {

  var future = Future.delayed(Duration(seconds: 2), () {
    throw Exception("Loi");
  });

  future.then((value) => print(value))
    .catchError((error) => print("Error $error"));
}