import 'package:get/get.dart';

class FruitsController extends GetxController
{
  RxList<String> fruits=['Orange','Banana','Apple'].obs;

  RxList temp=[].obs;

  addToFavourite(String value)

  {
    temp.add(value);



  }
  removeToFavourite(String value)

  {
    temp.remove(value);



  }






}