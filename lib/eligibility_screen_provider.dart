import 'package:flutter/cupertino.dart';

class EligibilityScreenProvider extends ChangeNotifier{
  String _messege='You have not given any input';
  bool _isEligible= false;

  String get messege => _messege;

  bool get isEligible => _isEligible;
  void checkEligibility(int age){
    if(age>=18){
      // you are eligible
      eligible();
    }
    else{
      //you are not eligible
      notEligible();
    }
  }
  void eligible() {
    _isEligible=true;
    _messege='You Are eligible to apply for driving license';
    notifyListeners();
  }
  void notEligible() {
    _isEligible=false;
    _messege='You Are not eligible to apply for driving license';
    notifyListeners();

  }
}