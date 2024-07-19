void main() {
  // List<int> scores = [10, 3, 8, 9, 4];
  // print(Exe1(scores));
  List<int> numbers = [3, 5, 2, 9, 5, 9, 8, 3, 7];
  print(Exe2(numbers));

  print(Exe3("abba", "dog cat cat dog"));
  // print(Exe3("abba", "dog cat cat fish"));
  // print(Exe3("aaaa", "dog cat cat dog"));
  // print(Exe3("abba", "dog dog dog dog"));

  List<String> input1 = ["Shogun", "Tapioca Express", "Burger King", "KFC"];
  List<String> input2 = ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"];
  print(Exe4(input1, input2));
}

///Exerscise 1
List<String> Exe1(List<int> inputScore) {
  Map<int, String> scoreMap = {};
  List<int> sortedScore = List.from(inputScore);
  List<String> resultList = List<String>.filled(inputScore.length, '');
  sortedScore.sort(
    (a, b) => b.compareTo(a),
  );
  for (int i = 0; i < inputScore.length; i++) {
    switch (i) {
      case 0:
        scoreMap[sortedScore[i]] = "Gold Medal";
        break;
      case 1:
        scoreMap[sortedScore[i]] = "Silver Medal";
        break;
      case 2:
        scoreMap[sortedScore[i]] = "Bronze Medal";
        break;
      default:
        scoreMap[sortedScore[i]] = (i + 1).toString();
    }
  }
  for (int i = 0; i < inputScore.length; i++) {
    resultList[i] = scoreMap[inputScore[i]]!;
  }
  return resultList;
}

///Exercise 2
String Exe2 (List<int> input){
  int result;
  String e = '';
  List<int> sortedList = input.toSet().toList();
  sortedList.sort((a, b) => b.compareTo(a),);
  if(sortedList.length > 1){
    result = sortedList[1];
    e = "Số lớn thứ 2 là $result";
  }else{
    e = "NO RESULT";
  }
  return e;
}

///Exercise 3
bool Exe3(String pattern, String s) {
  List<String> words = s.split(' ');
  if (pattern.length != words.length) {
    return false;
  }

  Map<String, String> patternToWord = {};
  Map<String, String> wordToPattern = {};

  for (int i = 0; i < pattern.length; i++) {
    String p = pattern[i];
    String w = words[i];

    if (patternToWord.containsKey(p)) {
      if (patternToWord[p] != w) {
        return false;
      }
    } else {
      patternToWord[p] = w;
    }

    if (wordToPattern.containsKey(w)) {
      if (wordToPattern[w] != p) {
        return false;
      }
    } else {
      wordToPattern[w] = p;
    }
  }

  return true;
}

///Exercise 4
List<String> Exe4(List<String> list1, List<String> list2) {
  Map<String, int> indexMap = {};
  List<String> result = [];
  int tongNho = double.maxFinite.toInt();

  for (int i = 0; i < list1.length; i++) {
    indexMap[list1[i]] = i;
  }

  for (int j = 0; j < list2.length; j++) {
    if (indexMap.containsKey(list2[j])) {
      int tong = j + indexMap[list2[j]]!;
      if (tong < tongNho) {
        tongNho = tong;
        result = [list2[j]];
      } else if (tong == tongNho) {
        result.add(list2[j]);
      }
    }
  }

  return result;
}
///Exercise 5
List<List<int>> Exe5 (List<int> inputarr) {
  inputarr.sort();
  int minDiff = double.maxFinite.toInt();
  List<List<int>> result = [];

  for (int i = 0; i < inputarr.length - 1; i++) {
    int diff = (inputarr[i + 1] - inputarr[i]).abs();
    if (diff < minDiff) {
      minDiff = diff;
      result = [[inputarr[i], inputarr[i + 1]]];
    } else if (diff == minDiff) {
      result.add([inputarr[i], inputarr[i + 1]]);
    }
  }

  return result;
}

///Exercise 6
String Exe6(String s) {
  List<int> letters = [];
  for (int i = 0; i < s.length; i++) {
    if (isLetter(s[i])) {
      letters.add(i);
    }
  }

  List<String> sList = s.split('');
  int left = 0;
  int right = letters.length - 1;

  while (left < right) {
    String temp = sList[letters[left]];
    sList[letters[left]] = sList[letters[right]];
    sList[letters[right]] = temp;
    left++;
    right--;
  }

  return sList.join('');
}

bool isLetter(String c) {
  return (c.codeUnitAt(0) >= 65 && c.codeUnitAt(0) <= 90) ||
      (c.codeUnitAt(0) >= 97 && c.codeUnitAt(0) <= 122);
}