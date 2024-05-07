import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 30);
  }

  static flushbarErrorMessage(String message, context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: message,
        title: 'Error',
        backgroundColor: Colors.red,
        borderRadius: BorderRadius.circular(10),
        titleColor: Colors.white,
        duration: const Duration(seconds: 3),
        positionOffset: 20,
        flushbarPosition: FlushbarPosition.TOP,
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(15),
        reverseAnimationCurve: Curves.easeInOut,
        icon: const Icon(
          Icons.error,
          size: 28,
        ),
      )..show(context),
    );
  }

  static snackbar(String message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.black,
      content: Text(message),
    ));
  }
}
