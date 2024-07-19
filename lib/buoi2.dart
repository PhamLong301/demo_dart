void main() {
  // int tuoi = 12;
  // int x = 4;
  // int caculatedAge = (x *2) + 3;
  // // int caculatedAge2 = (x / 4) + 3;
  //
  // int timeGame = 60;
  // bool timeOver = false;
  //
  // bool isEnoughAge = false;
  // isEnoughAge = true;
  // print("demo ! operator: ${!isEnoughAge}");
  //
  //
  // dynamic age = 32;
  // print(age);
  //
  // age as int;
  //
  // print('dong nay ${3 is! int}');
  //
  // print("-------");
  // print(age);
  // print(3 ==4 );

  // int oldNotCalculatedYet;
  // oldNotCalculatedYet = (3 >= 1000)? 12 : 32;
  // oldNotCalculatedYet = (3 <= 1000)? ('3' is int? 50 : 60) : 32;
  // //3 >= 1000 : T oldNotCalculatedYet = 12
  // //3 >= 1000 : F oldNotCalculatedYet = 32
  //
  // print(oldNotCalculatedYet);
  //
  // List<int> intList = [12,14,16,18];
  // intList.length;
  // intList.reversed;

  String aCantNull = '10';
  aCantNull = '3';
  String? aCanNull = null;
  aCanNull = '3';

  List<int?>? number = [null, 2,4];

  // for(int i = 1 ; i <= 9; i++){
  //   for (int o =1; o <= 9; o ++){
  //     print('${i} x ${o} = ${i * o}');
  //   }
  // }

  int age = getAge();
  print('${age*2}');
  justPrint('aaa', 10);
  justPrint('bbb', 10);
  // print(binhPhuong(8));

  print(binhPhuong(4));
  print(binhPhuong('aaa'));
  duTuoi(13);
}

void justPrint(String name, int age ){
  // String aaa = 'aaa';
  print("print something $name");
}

// int binhPhuong(int sct){
//   return sct*sct;
// }

int? binhPhuong(dynamic so){
  bool isOkArgument = (so is int)? true : false;
  if(isOkArgument == true){
    return so * so;
  }else {
    return null;
  }

  // return isOkArgument? (so * so) : null;
}

void duTuoi(int tuoi){
  if ( tuoi < 18){
    print("Bạn chưa đủ tuổi");
  }else{
    print('Đã đủ tuổi');
  }
}

int getAge(){
  return 3;
}