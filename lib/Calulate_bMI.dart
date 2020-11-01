import 'dart:math';
class BMIcalculator{
  BMIcalculator({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getBMI(){
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
      return 'OVERWEIGHT';
    }
    else if(_bmi >18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }

  }
  String getMessage(){
    if(_bmi >= 25){
      return 'Quarantine made you this! No chips with NETFLIX now!';
    }
    else if(_bmi >18.5){
      return 'So you secretly worked out in quarantine XD ';
    }
    else{
      return 'Congrats you managed to not get fat in the pandemic!';
    }

  }

}