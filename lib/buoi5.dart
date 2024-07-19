void main() {
  Nguoi nguoi1 = Nguoi("Long", 18, "Nam Dinh");
  print(nguoi1);
  print(nguoi1.kiemTraTuoi());
  // nguoi1.thongTin();
  nguoi1.danhsach20Tuoi();

}

class Nguoi {
  String? ten;
  int? tuoi;
  String? diaChi;

  @override
  String toString() {
    return 'Nguoi{ten: $ten, tuoi: $tuoi, diaChi: $diaChi}';
  }

  Nguoi(this.ten, this.tuoi, this.diaChi);

  int? kiemTraTuoi() {
    return tuoi;
  }

  // void thongTin() {
  //   print("Thong tin cua cua $ten: \n tuoi: $tuoi, \n dia chi: $diaChi");
  // }

  void danhsach20Tuoi() {
    Nguoi nguoi2 = Nguoi("Long2", 24, "ha noi");
    Nguoi nguoi3 = Nguoi("Long2", 18, "ha noi");
    Nguoi nguoi4 = Nguoi("Long2", 25, "ha noi");
    Nguoi nguoi5 = Nguoi("Long2", 16, "ha noi");

    List<Nguoi> danhSach = [nguoi2, nguoi3, nguoi4, nguoi5];
    for (int i = 0; i < danhSach.length; i++) {
      // if (danhSach[i].tuoi! > 20) {
        print(danhSach[i]);
      // }
    }
  }
}
