void main() {
  List<int> heights = [5, 1, 2, 3, 4];
  // print(Exe1(heights));
  // print(Exe2(900000));
  print(exe3([7,1,1,6,5]));
}

///Exercise 1
int Exe1(List<int> heights) {
  List<int> expected = List<int>.from(heights);
  expected.sort(
    (a, b) => a.compareTo(b),
  );
  int counts = 0;
  for (int i = 0; i < heights.length; i++) {
    if (heights[i] != expected[i]) {
      counts++;
    }
  }
  return counts;
}

///Exercise 2
int Exe2(int tien) {
  int soTo = 0;
  List<int> listTyGia = [
    500000,
    200000,
    100000,
    50000,
    20000,
    5000,
    2000,
    1000
  ];
  for (int tyGia in listTyGia) {
    soTo = (tien ~/ tyGia) + soTo;
    tien = tien % tyGia;
  }
  if (tien > 0) {
    soTo = -1;
  }
  return soTo;
}

///Exercise 3
int exe3(List<int> giaChungKhoan) {
  int giaThapNhat = giaChungKhoan[0];
  int laiCaoNhat = 0;

  for (int i = 1; i < giaChungKhoan.length; i++) {
    int giaHienTai = giaChungKhoan[i];
    int loiNhuan = giaHienTai - giaThapNhat;
    if (loiNhuan > laiCaoNhat) {
      laiCaoNhat = loiNhuan;
    }
  }

  return laiCaoNhat;
}
