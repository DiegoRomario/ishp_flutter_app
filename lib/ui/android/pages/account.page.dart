import 'package:flutter/material.dart';
import 'package:ishp_flutter_app/blocs/user.bloc.dart';
import 'package:ishp_flutter_app/ui/android/pages/settings.page.dart';
import 'package:ishp_flutter_app/ui/shared/widgets/account/authenticated-user-card.widget.dart';
import 'package:ishp_flutter_app/ui/shared/widgets/account/unauthenticated-user-card.widget.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<UserBloc>(context);
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
              child: Icon(Icons.settings),
            )
          ],
        ),
        body: bloc.user == null
            ? UnauthenticatedUserCard()
            : AuthenticatedUserCard());
  }
}
