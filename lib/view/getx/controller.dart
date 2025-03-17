import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Homecontroller extends GetxController{
  RxInt count=0.obs;
  RxBool isLike=false.obs;
  void increment(){
    count.value++;

  }
  void toogleLike(){
    isLike.value=!isLike.value;
  }

}