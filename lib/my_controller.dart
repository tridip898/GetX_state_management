import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens=0.obs;
  int get sum=>books.value + pens.value;

  void increment() {
    books.value++;
  }

  void decrement() {
    if (books.value <= 0) {
      Get.snackbar("Buying books", "Buy atleast one book",duration: Duration(seconds: 3));
    } else {
      books.value--;
    }
  }

  void incrementPens() {
    pens.value++;
  }

  void decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar("Buying books", "Buy atleast one pen",duration: Duration(seconds: 3));
    } else {
      pens.value--;
    }
  }
}
