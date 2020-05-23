import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:teesco/core/util/log_wrapper.dart';

import 'core/res/strings.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  Log.i(
    tag: "HomeApp",
    message: "Initialization Done!\nRunning Application...",
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.app_name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterLogin(
        // TODOadd functions for each
        onLogin: (data) {
          Fluttertoast.showToast(msg: "Loggin In");
          return Future.value("");
        },
        onRecoverPassword: (data) {
          Fluttertoast.showToast(msg: "Recovering Password");
          return Future.value("");
        },
        onSignup: (data) {
          Fluttertoast.showToast(msg: "Signing Up");
          return Future.value("");
        },

        title: "TEESCO",
        logo: "assets/images/icon_ecell.png",
      ),
    );
  }
}
