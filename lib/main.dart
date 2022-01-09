import 'package:flutter/material.dart';

import 'app/view/Index.dart';
import 'app/view/One/OneLogin.dart';
import 'app/view/One/OneRegister.dart';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/Index",
      routes: {
        "/Index": (context) => Index(),
        "/OneRegister": (context) => OneRegister(),
        "/OneLogin": (context) => OneLogin(),
      },
    );
  }
}
