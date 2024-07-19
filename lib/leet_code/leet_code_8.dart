void main() {
  int mucNhayCao = 5;
  int soOng = 5;
  List<int> chieuCaoOng = [1, 2, 5, 3, 8, 9];

  print(exercise1(mucNhayCao, chieuCaoOng));

  ///Brinary Search
  // List<int> arr = [1,3,5,7,9];
  // int target = 5;
  // int index = binarySearch(arr, target);
  //
  // if(index == -1){
  //   print("$target không tồn tại trong mảng");
  // }else{
  //   print("$target tồn tại trong mảng tại vị trí $index");
  // }

  List<int> arr = [2, 3, 4, 7, 11];
  int k = 5;
  // print(exercise2(arr, k));

  int input = 1234;
  print(exercise3(input));
}

String exercise1(int mucNhayCao, List<int> chieuCaoOng) {
  for (int i = 0; i < chieuCaoOng.length - 1; i++) {
    int ongHienTai = chieuCaoOng[i];
    int ongTiepTheo = chieuCaoOng[i + 1];

    if (ongTiepTheo > ongHienTai + mucNhayCao ||
        ongHienTai > ongTiepTheo + mucNhayCao) {
      return "Game Over";
    }
  }

  return 'You Win';
}

int exercise2(List<int> arr, int k) {
  int soConThieu = k + 1;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > soConThieu) {
      break;
    } else if (arr[i] == soConThieu) {
      soConThieu++;
    }
  }
  return soConThieu;
}

int exercise3(int input) {
  int count = 0;
  for (int i = 1; i <= input; i++) {
    if (input % i == 0) {
      count++;
    }
  }

  return count;
}

///Brinary Search

int binarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;
  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}
