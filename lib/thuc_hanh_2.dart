void main() {
  print(Bai2(7));

  List<int> chuoiVD = [0,1,0,2,0,3,5,0,8,0,4];

}

List<dynamic> Bai1(List<int> dayMot) {
  List<dynamic> dayHai = [];
  for (int i = 0; i < dayMot.length; i++) {
    if (i % 2 == 0) {
      dayHai.add("Fizz");
    } else if (i % 3 == 0) {
      dayHai.add("Buzz");
    } else if (i % 2 == 0 && i % 3 == 0) {
      dayHai.add("FizzBuzz");
    }
  }

  return dayHai;
}

bool Bai2(int num) {
  for (int i = 1; i * i < num ~/ 2; i++) {
    if (i * i == num) {
      return true;
    }
  }
  return false;
}

List<int> Bai3(List<int> chuoi) {
  int count = 0;
  for (int num in chuoi){
    if(num == 0){
      count++;
    }
  }
  return [count];
}
