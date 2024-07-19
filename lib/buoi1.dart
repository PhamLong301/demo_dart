void main() {
  String name = "long";
  int age = 22;
  double percent = 3.4;
  List students = [];
  List<int> studentsHaveValue = [1, 2, 3];
  List<String> name3 = ["long", "long1"];
  List<List<int>> test = [
    [1, 2, 3],
    [1, 2, 3],
    [11, 22, 33]
  ];
  Map<String, int> studentFeatScore = {
    "luong" : 8,
  };
  List<Map<String, double>> _students = [
    {"Height": 1.80, "Weight": 89.6},
    {"Height": 1.80, "Weight": 89.6},
    {"Height": 1.80, "Weight": 89.6},
  ];

  dynamic num1 = 4;
  dynamic num2 = "4";

  const int numberConst = 3;

  final int numFinal = 2;
  // print(num1/num2);

  print(name.runtimeType);
  print(name3);
  print(studentsHaveValue);
  print(test);
  print(studentFeatScore['luong']);
  print(_students);



}
