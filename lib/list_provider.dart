import 'package:flutter/material.dart';

class NumbersListProvider extends ChangeNotifier {
  List<int> numbersList = [1, 2, 3, 4];

  void addNumber() {
    int lastNum = numbersList.isNotEmpty ? numbersList.last : 0;
    numbersList.add(lastNum + 1);
    debugPrint("last Number :: $lastNum and Whole list $numbersList");
    notifyListeners();
  }

  void removeNumber() {
    if (numbersList.isNotEmpty) {
      int lastNum = numbersList.removeLast();
      debugPrint("Removed Number :: $lastNum, Whole list $numbersList");
      notifyListeners();
    }
  }
}
