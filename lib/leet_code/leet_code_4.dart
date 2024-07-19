void main() {
  List<int> input = [6, 6, 5, 5, 3, 3];
  List<int> input2 = [6, 6, 5, 5, 3, 3];
  print(Exercise1(input));
  print(Exercise2(input, input2));

  print(Exercise3('abc', 'bac'));
}

int Exercise1(List<int> input) {
  // int n = input.length;
  // int maxCandy = n ~/ 2;
  // Map<int, bool> sameCandy = {};
  // int u = 0;
  // for (int i = 0; i < input.length; i++){
  //   if(!sameCandy.containsKey(input[i])){
  //     sameCandy[input[i]] = true;
  //     u++;
  //   }
  // }
  return input.toSet().toList().length;
}

List<int> Exercise2(List<int> num1, List<int> num2) {
  List<int> result = [];
  for (int i = 0; i < num1.length; i++) {
    for (int j = 0; j < num2.length; j++) {
      if (num1[i] == num2[j]) {
        result.add(num1[i]);
        num2.removeAt(j);
        break;
      }
    }
  }
  return result;
}

List<int> Exercise2V2(List<int> num1, List<int> num2) {
  Set<int> set1 = Set<int>.from(num1);
  Set<int> set2 = Set<int>.from(num2);

  Set<int> result = set1.intersection(set2);

  return result.toList();
}

bool Exercise3(String a, String b) {
  bool result = true;

  List<String> stra = a.split('');
  List<String> strb = b.split('');

  for (int i = 0, j = (strb.length - 1);
      i <= (stra.length) && j >= 0;
      i++, j--) {
    if (stra[i] == strb[j]) {
      return false;
    }
  }
  return result;
}

bool Exercise4(int input) {
  input.toString().split('').toString();
  // Set<int> a = ;/
  bool result = true;
  while (input > 1) {
    result = false;


  }
  return result;
}

