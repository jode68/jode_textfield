import 'package:flutter/material.dart';
import 'package:the_validator/the_validator.dart';
import 'package:jode_textfield/controllers/controllers.dart';

Widget loginInputField(BuildContext context) {
  final keyForm = GlobalKey<FormState>();

  return SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Form(
      key: keyForm,
      child: Column(
        children: [
          TextFormField(
            controller: myCtrl.emailLoginController,
            validator: FieldValidator.email(message: 'Enter some Email valid'),
            decoration: const InputDecoration(
              labelText: 'Email',
              errorText: '',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: myCtrl.passwordLoginController,
            obscureText: true,
            validator: FieldValidator.password(
              errorMessage: 'Enter some text min 6 chars',
              minLength: 6,
            ),
            decoration: const InputDecoration(
              labelText: 'Password',
              errorText: '',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 15,
            child: ElevatedButton(
              onPressed: () {
                if (keyForm.currentState!.validate()) {
                  myCtrl.login();
                }
              },
              child: const Text(
                'Login User',
                style: TextStyle(fontSize: 24),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget userInputField(BuildContext context) {
  final keyForm = GlobalKey<FormState>();
  final passwordUserCheckController = TextEditingController();

  return SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Form(
      key: keyForm,
      child: Column(
        children: [
          TextFormField(
            controller: myCtrl.emailUserController,
            validator: FieldValidator.email(message: 'Enter some Email valid'),
            decoration: const InputDecoration(
              labelText: 'Email',
              errorText: '',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: myCtrl.passwordUserController,
            obscureText: true,
            validator: FieldValidator.password(
              errorMessage: 'Enter some text min 6 chars',
              minLength: 6,
            ),
            decoration: const InputDecoration(
              labelText: 'Password',
              errorText: '',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: passwordUserCheckController,
            obscureText: true,
            validator: FieldValidator.equalTo(
              myCtrl.passwordUserController,
              message: 'Enter same password confirm',
            ),
            decoration: const InputDecoration(
              labelText: 'Password confirm',
              errorText: '',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 15,
            child: ElevatedButton(
              onPressed: () {
                if (keyForm.currentState!.validate()) {
                  print(myCtrl.emailUserController.text);
                  print(myCtrl.passwordUserController.text);
                }
              },
              child: const Text(
                'Login User',
                style: TextStyle(fontSize: 24),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
