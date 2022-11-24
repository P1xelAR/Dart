 import 'dart:io';
 main () {

  var Konsol ={
    'Storage':['500GB','2TB'], 
    'Color':['Black','White'],
    'Dealer':'Teknosa',
    'Price':'12.000 TL', 
};
  bool Loop = true;

  while(Loop){
      print('Please select operation: \n 1- Add Key \n 2- Delete  Key \n 3- Edit Key \n 4- Search Key \n 5- Search Value \n 6- Show list \n q- Quit');
  String operation = stdin.readLineSync()!; 
  
  switch (operation){
    /////////////////////////////
    ///KEY_ADD
    /////////////////////////////
    case '1':
      int LenA = Konsol.length;
      print('$Konsol \n -------------------------------------');
      print('Key:');
        String Ka = stdin.readLineSync()!;
      print('Value:');
        String Va = stdin.readLineSync()!;
      Konsol.putIfAbsent('$Ka',() => Va);
      print(Konsol);
      int LenAL = Konsol.length;
      if(LenA < LenAL){
        print('Successful');
      }
      else{
        print('Error');
      }
    break;
    /////////////////////////////
    ///KEY_DELETE
    /////////////////////////////
    case '2':
      int LenD = Konsol.length;
      print('$Konsol \n -------------------------------------');
        print('Key');
          String Kd = stdin.readLineSync()!;
        Konsol.remove('$Kd');
      print(Konsol);
        int LenDL = Konsol.length;
      if(LenD > LenDL){
        print('Successful');
      }
      else{
        print('Error');
      }
    break;
    /////////////////////////////
    ///KEY_EDİT
    /////////////////////////////
      case '3':
      print('$Konsol \n -------------------------------------');
        print('Key:');
        String Ke = stdin.readLineSync()!;
        print('Value:');
        String Ve = stdin.readLineSync()!;
        Konsol['$Ke']= '$Ve';
        print(Konsol);
      break;
    /////////////////////////////
    ///FILTER
    /////////////////////////////
      case '4':
        print('Key:');
        String Kf = stdin.readLineSync()!;
      bool FrK = Konsol.containsKey(Kf);
      print(FrK);
      break;
      case '5':
        print('Value:');
        String Vf = stdin.readLineSync()!;
      bool FrV = Konsol.containsValue(Vf);
      print(FrV);
      break;
    /////////////////////////////
    ///SHOW LIST
    /////////////////////////////
      case '6':
        print(Konsol);
      break;
    /////////////////////////////
    ///QUIT PROGRAM
    /////////////////////////////
      case 'q':
        Loop = false;
      break;
    /////////////////////////////
    default:
      print('Invalid Operation !!!!!! \n -------------------------------------');
    break; 
      };
    
    } 
  }




