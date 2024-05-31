import 'package:flutter/material.dart';
import 'package:mvvm_with_provider/utils/routes/routes_name.dart';
import 'package:mvvm_with_provider/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final userPreferences = Provider.of<UserViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  userPreferences.remove().then((value) {
                    Navigator.pushNamed(context, RoutesName.login);
                  });
                },
                child: const Text('Logout')),
          ],
        ),
      ),
    );
  }
}
