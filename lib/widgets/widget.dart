import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController snackBarOk(String title, String message) {
  return Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.lightGreenAccent,
    borderWidth: 1,
    borderColor: Colors.black,
  );
}

SnackbarController snackBarError(String title, String message) {
  return Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.redAccent,
    borderWidth: 1,
    borderColor: Colors.black,
  );
}
