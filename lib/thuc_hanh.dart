
void main() {
  Nguoi nguoi1 = Nguoi("123", "AAA", 18);
  Nguoi nguoi2 = Nguoi("123", "ABA", 60);
  Nguoi nguoi3 = Nguoi("123", "ACA", 70);
  Nguoi nguoi4 = Nguoi("123", "ADA", 30);
  List<Nguoi> dsNguoi = [nguoi1, nguoi2, nguoi3, nguoi4];
  ManagePeople managePeople = ManagePeople(dsNguoi);
  managePeople.soLuongNguoi();
}

enum TypePeople { treEm, nguoiLon, nguoiGia }

class Nguoi {
  String _id;
  String name;
  int tuoi;
  TypePeople? typePeople;

  Nguoi(this._id, this.name, this.tuoi, {this.typePeople});

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  Nguoi infor_Nguoi() {
    Nguoi thongTinNguoi = Nguoi(_id, name, tuoi);
    if (this.tuoi < 18) {
      this.typePeople = TypePeople.treEm;
    } else if (18 <= this.tuoi && this.tuoi < 60) {
      this.typePeople = TypePeople.nguoiLon;
    } else {
      this.typePeople = TypePeople.nguoiGia;
    }
    return this;
  }
  

}

class ManagePeople {
  List<Nguoi> dsNguoi;

  ManagePeople(this.dsNguoi);

  void soLuongNguoi() {
    int loopDS = this.dsNguoi.length;
    for (int i = 0; i < loopDS; i++) {
      int x = 0;
      int y = 0;
      int z = 0;
      if (dsNguoi[i].tuoi <= 18) {
        x++;
        print("So nguoi duoi 18 tuoi: $x");
      }
      if (dsNguoi[i].tuoi >= 18 && dsNguoi[i].tuoi < 60) {}
    }
  }
}
