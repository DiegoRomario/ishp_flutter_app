import 'package:flutter/material.dart';
import 'package:ishp_flutter_app/ui/android/pages/login.page.dart';
import 'package:ishp_flutter_app/ui/android/pages/signup.page.dart';

class UnauthenticatedUserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
          child: Text("Autentique-se"),
        ),
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpPage(),
              ),
            );
          },
          child: Text("Ainda não sou cadastrado"),
        ),
      ],
    );
  }
}
