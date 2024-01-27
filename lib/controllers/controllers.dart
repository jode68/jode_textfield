import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jode_textfield/views/main_page.dart';
import 'package:jode_textfield/widgets/widget.dart';

class Controller extends GetxController {
  final emailLoginController = TextEditingController();
  final emailUserController = TextEditingController();
  final passwordLoginController = TextEditingController();
  final passwordUserController = TextEditingController();

  void addItem() async {
    myList.add({myCtrl.emailLoginController.text: myCtrl.passwordLoginController.text});
  }

  Future login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailLoginController.text,
        password: passwordLoginController.text,
      );
      final userOk = FirebaseAuth.instance.currentUser;
      if (userOk != null) {
        userReady.value = 'ok...';
        snackBarOk('Login User', 'Ok...');
        Get.to(() => const MainPage());
      } else {
        userReady.value = 'none';
      }
    } on FirebaseAuthException catch (_) {
      userReady.value = 'Invalid Login Credential ...';
      snackBarError('Login Error', 'Invalid Login Credential ...');
    }
  }
}

final myCtrl = Controller();

var myList = [].obs;

var userReady = 'none'.obs;
