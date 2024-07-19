void main() {
  int num = 17;
  // exercise1(num);

  // List<int> list = [-4, 3, -9, 0, 10, 5];
  List<int> list2 = [6, 1, 2];
  // print(exercise2(list2));
  // print(exerciseV2(list2));

  List<int> input = [4, 4, 4, 4];
  List<int> input2 = [2, 1, 4, 3];
  print(exercise3(input2));
}

///Exercise 1
bool kiemTraSoNguyenTo(int input) {
  if (input <= 1) return false;
  if (input == 2) return true;
  if (input % 2 == 0) return false;
  for (int i = 3; i <= input ~/ 2; i += 2) {
    if (input % i == 0) return false;
  }
  return true;
}

void exercise1(int num) {
  int a = 1;
  while (num > 0) {
    a *= num % 10;
    num ~/= 10;
  }
  if (kiemTraSoNguyenTo(a)) {
    print('có');
  } else {
    print('không');
  }
}

///Exercise 2
int giaTriTuyetDoi(int i) {
  return i < 0 ? -i : i;
}

int exercise2(List<int> list) {
  int tongLonNhat = 0;
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = i + 1; j < list.length; j++) {
      int tongGiaTriTuyetDoi = giaTriTuyetDoi(list[i] + list[j]);
      if (tongGiaTriTuyetDoi > tongLonNhat) {
        tongLonNhat = tongGiaTriTuyetDoi;
      }
    }
  }
  return tongLonNhat;
}

int exerciseV2(List<int> list) {
  int maxNum = list[0];
  int minNum = list[0];
  int tongGiaTriTuyetDoi = 0;

  for (int i = 0; i < list.length; i++) {
    int current = list[i];
    int tongLonNhat = giaTriTuyetDoi(maxNum + current);
    int tongNhoNhat = giaTriTuyetDoi(minNum + current);
    if (current > maxNum) {
      maxNum = current;
    }
    if (current < minNum) {
      minNum = current;
    }
    if (tongLonNhat > tongGiaTriTuyetDoi) {
      tongGiaTriTuyetDoi = tongLonNhat;
    }
    if (tongNhoNhat > tongGiaTriTuyetDoi) {
      tongGiaTriTuyetDoi = tongNhoNhat;
    }
  }

  return tongGiaTriTuyetDoi;
}

///Exercise 3
int exercise3(List<int> input) {
  input.sort(
    (a, b) => b.compareTo(a),
  );

  int tongLitSua = 0;
  for (int i = 0; i < input.length; i++) {
    int soLitSuaHienTai = input[i] - i;
    if (soLitSuaHienTai > 0) {
      tongLitSua += soLitSuaHienTai;
    }
  }

  return tongLitSua;
}
