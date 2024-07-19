void main() {
  chuyedoi("9", true);
  // thoiDiem(muaTrongNam.muaDong, thuTrongTuan.thuHai);
}

void getPeopleInformation(
    {required String fullName, bool? isCertificated, String lan = 'vi'}) {
  String result = '';
  if (isCertificated == null) {
    result = 'Do not know about $fullName';
  } else {
    if (isCertificated == true) {
      result = "$fullName is certificated, lan: $lan";
    } else {
      result = "$fullName is not certificated, lan: $lan";
    }
  }
}

void chuyedoi(String toInt, bool tostring) {
  // print(int.parse(toInt));
  // if(tostring == true){
  //   print(tostring.toString());
  // }
}

int? convertFromString({required String value}) {
  final int? result;
  return result = int.tryParse(value);
}

enum muaTrongNam { muaXuan, muaHe, muaThu, muaDong }

enum thuTrongTuan { thuHai, thuBa, thuTu, thuNam, thuSau, thuBay, chuNhat }

// void thoiDiem(muaTrongNam mua, thuTrongTuan thu){
//   if(mua == muaTrongNam.muaXuan){
//     if(thu == thuTrongTuan.thuHai){
//       print("Mua trong năm: Mùa xuân , thư trong tuan thu hai");
//     }else if(thu ==  thuTrongTuan.thuBa){
//       print("Mua trong năm: Mùa xuân , thư trong tuan thu ba");
//
//     }else if(thu ==  thuTrongTuan.thuTu){
//       print("Mua trong năm: Mùa xuân , thư trong tuan thu tu");
//
//     }else if(thu ==  thuTrongTuan.thuNam){
//       print("Mua trong năm: Mùa xuân , thư trong tuan thu nam");
//
//     }else if(thu ==  thuTrongTuan.thuSau){
//       print("Mua trong năm: Mùa xuân , thư trong tuan thu sau");
//
//     }else if(thu ==  thuTrongTuan.thuBay){
//       print("Mua trong năm: Mùa xuân , thư trong tuan thu bay");
//
//     }else if(thu ==  thuTrongTuan.chuNhat) {
//       print("Mua trong năm: Mùa xuân , thư trong tuan thu hai");
//     }
//   }else if(mua == muaTrongNam.muaHe){
//     if(thu == thuTrongTuan.thuHai){
//       print("Mua trong năm: Mùa hạ , thư trong tuan thu hai");
//     }else if(thu ==  thuTrongTuan.thuBa){
//       print("Mua trong năm: Mùa hạ , thư trong tuan thu ba");
//
//     }else if(thu ==  thuTrongTuan.thuTu){
//       print("Mua trong năm: Mùa hạ , thư trong tuan thu tu");
//
//     }else if(thu ==  thuTrongTuan.thuNam){
//       print("Mua trong năm: Mùa hạ , thư trong tuan thu nam");
//
//     }else if(thu ==  thuTrongTuan.thuSau){
//       print("Mua trong năm: Mùa hạ , thư trong tuan thu sau");
//
//     }else if(thu ==  thuTrongTuan.thuBay){
//       print("Mua trong năm: Mùa hạ , thư trong tuan thu bay");
//
//     }else if(thu ==  thuTrongTuan.chuNhat) {
//       print("Mua trong năm: Mùa hạ , thư trong tuan thu hai");
//     }
//   }else if(mua == muaTrongNam.muaThu){
//     if(thu == thuTrongTuan.thuHai){
//       print("Mua trong năm: Mùa thu , thư trong tuan thu hai");
//     }else if(thu ==  thuTrongTuan.thuBa){
//       print("Mua trong năm: Mùa xuân , thư trong tuan thu ba");
//
//     }else if(thu ==  thuTrongTuan.thuTu){
//       print("Mua trong năm: Mùa thu , thư trong tuan thu tu");
//
//     }else if(thu ==  thuTrongTuan.thuNam){
//       print("Mua trong năm: Mùa thu , thư trong tuan thu nam");
//
//     }else if(thu ==  thuTrongTuan.thuSau){
//       print("Mua trong năm: Mùa thu , thư trong tuan thu sau");
//
//     }else if(thu ==  thuTrongTuan.thuBay){
//       print("Mua trong năm: Mùa thu , thư trong tuan thu bay");
//
//     }else if(thu ==  thuTrongTuan.chuNhat) {
//       print("Mua trong năm: Mùa thu , thư trong tuan thu hai");
//     }
//   }else if(mua == muaTrongNam.muaDong){
//     if(thu == thuTrongTuan.thuHai){
//       print("Mua trong năm: Mùa đông , thư trong tuan thu hai");
//     }else if(thu ==  thuTrongTuan.thuBa){
//       print("Mua trong năm: Mùa đông , thư trong tuan thu ba");
//
//     }else if(thu ==  thuTrongTuan.thuTu){
//       print("Mua trong năm: Mùa đông , thư trong tuan thu tu");
//
//     }else if(thu ==  thuTrongTuan.thuNam){
//       print("Mua trong năm: Mùa đông , thư trong tuan thu nam");
//
//     }else if(thu ==  thuTrongTuan.thuSau){
//       print("Mua trong năm: Mùa đông , thư trong tuan thu sau");
//
//     }else if(thu ==  thuTrongTuan.thuBay){
//       print("Mua trong năm: Mùa đông , thư trong tuan thu bay");
//
//     }else if(thu ==  thuTrongTuan.chuNhat) {
//       print("Mua trong năm: Mùa đông , thư trong tuan thu hai");
//     }
//   }
// }