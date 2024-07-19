void main() {
  List<String> sentences = [
    "Đây là một câu ví dụ để đếm số lượng từ.",
    "Câu này ngắn.",
    "Câu này thì dài hơn một chút và có nhiều từ hơn.",
    "Một câu nữa để thử nghiệm."
  ];

  String kq = cauDaiNhat(sentences);
  int slTu = demTu(kq);

  // print("Câu dài nhất là câu: $kq có sô từ: $slTu");

  List<int> daySo = [1, 15, 6, 3];

  print(Tong(daySo));

  // print(binhPhuongSo([1,2,6,8]));
  // print(ktSo(value: 7 * 7 * 7 * 7 * 7));

  List<int> array = [0, 0, 0, 0, 2, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0];
  int lanHien = demLanHien(daySo: array);

  print(lanHien);
}

// int exeOne(List<String> daySo) {
//   int X = 0;
//   for (int i = 0; i < daySo.length; i++) {
//     switch (daySo[i]) {
//       case "X++":
//         {
//           X += 1;
//           break;
//         }
//       case "X++":
//         {
//           X += 1;
//           break;
//         }
//       case "X++": {
//         X +=1;
//         break;
//       }
//       default: {

//     }
//   }
//   return tongDaySo;
// }

///Exercise 2
int demTu(String cau) {
  List<String> soTu = cau.split('');
  return soTu.length;
}

String cauDaiNhat(List<String> dsCau) {
  String caudaiNhat = "";
  int cauNhieuTuNhat = 0;
  for (String cau in dsCau) {
    int soTuCuaCau = demTu(cau);
    if (soTuCuaCau > cauNhieuTuNhat) {
      caudaiNhat = cau;
      soTuCuaCau = cauNhieuTuNhat;
    }
  }
  return caudaiNhat;
}

///Exercise 3
int Tong(List<int> day) {
  int tongPhanTu = 0;
  int tongChuSo = 0;
  int kq = tongPhanTu - tongChuSo;
  for (int e in day) {
    tongPhanTu += e;
    for (int i = 0; i <= e.toString().length; i++) {
      // int so = int.parse(e.toString().length);
      // tongChuSo += so;
    }
  }
  return kq;
}

///Exercise 4
///

List binhPhuongSo(List<int> input) {
  return input.map((e) => e * e).toList();
}

///Exercise 5
///
bool ktSo({required int value}) {
  while (value % 7 == 0) {
    value ~/= 7;
  }
  while (value % 5 == 0) {
    value ~/= 5;
  }
  while (value % 3 == 0) {
    value ~/= 3;
  }
  while (value % 2 == 0) {
    value ~/= 2;
  }
  return value == 1;
}

///Exercise 6
///
int demLanHien({required List<int> daySo}) {
  int soLanHienNhieuNhat = 0;
  int soDemHienTai = 0;

  for (int i = 0; i < daySo.length; i++) {
    if (daySo[i] == 0) {
      soDemHienTai++;
    } else {
      if (soDemHienTai > soLanHienNhieuNhat) {
        soLanHienNhieuNhat = soDemHienTai;
        soDemHienTai = 0;
      }else{

      }
    }
  }
  return soLanHienNhieuNhat;
}
