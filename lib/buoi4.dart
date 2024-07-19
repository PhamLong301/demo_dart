void main() {
  // List<int> intList = [3, 4, 1, 2, 7, 10];
  // for(int index = 0; index < intList.length; index++){
  //   if(index % 2 ==0){
  //     print('number at index ${index +1} is : ${intList[index]}');
  //   }
  // }
  print1To100();
  // exercise();
}

void print1To100() {
  int tong = 0;
  for (int i = 1; i <= 100; i++) {
    if (i % 2 == 0) {
      if(i >= 90) break;
      tong += i;
    }
  }
  print(tong);
}
// void exercise(){
//   int sum = 0;
//   for(int i = 1; i <= 100; i++){
//     if(i % 2 == 0 && i < 90){
//       sum += i;
//     }
//   }
//   print(sum);
// }