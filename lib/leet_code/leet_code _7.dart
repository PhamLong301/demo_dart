void main(){

  //Exercise 1
  List<int> input = [3,4,9,25,16,64];
  print(demSoChinhPhuong(input));
  //Exercise 2
  List<int> input2 = [1,2,3,4,6,8,6];
  print(findTargetPosition(input2, 6));
}

///Exercise 1
bool checkSoChinhPhuong(int num){
  if(num < 0 ) return false;
  //for(int i =0; i * i <= num; i++){
  for(int i = 0; i <= num/2 ; i++){
    if(i * i == num){
      return true;
    }
  }
  return false;
}
int demSoChinhPhuong(List<int> input){
  int demSo = 0;
  for(var num in input){
    if(checkSoChinhPhuong(num)){
      demSo++;
    }
  }
  return demSo;
}

///Exercise 2
List<int> findTargetPosition(List<int> input, int target){
  List<int> result = [];
  int theFirst = -1;
  int theLast = -1;
  int count = 0;
  for (int i = 0; i < input.length; i++) {
    if (input[i] == target) {
      count++;
      if (count == 1) {
        theFirst = i + 1;
        theLast = i + 1;
      }
      if (count > 1) {
        theLast = i + 1;
      }
    }}
    result = [theFirst, theLast];
    return result;
  }

///Exercise 3
int maxPlugins(List<int> plugins){
  return plugins.reduce((a, b) => a + b) - 3;
}
