import 'package:flutter/material.dart';
import 'package:mvvm_with_provider/utils/routes/routes_name.dart';

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
            Navigator.pushNamed(context, RoutesName.homeView);
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const HomeView(),
            //     ));
          },
          child: const Text('Click')),
    ));
  }
}
