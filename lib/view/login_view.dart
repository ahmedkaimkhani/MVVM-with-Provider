import 'package:flutter/material.dart';
import 'package:mvvm_with_provider/utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
          onTap: () {
            Utils.snackbar('No internet connection', context);
            // Utils.toastMessage('No internet connection');
            // Utils.flushbarErrorMessage(
            //   'No internet connection',
            //   context,
            // );
          },
          child: const Text('Click')),
    ));
  }
}
