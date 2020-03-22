import 'package:flutter/material.dart';
import 'package:ishp_flutter_app/blocs/theme.bloc.dart';
import 'package:ishp_flutter_app/settings.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<ThemeBloc>(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          Text(
            "Tema atual: ${Settings.theme}",
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: () {
              bloc.save("dark");
              bloc.change('dark');
            },
            child: Text("Dark"),
          ),
          FlatButton(
            onPressed: () {
              bloc.save("dark-yellow");
              bloc.change('dark-yellow');
            },
            child: Text("Dark Yellow"),
          ),
          FlatButton(
            onPressed: () {
              bloc.save("light");
              bloc.change('light');
            },
            child: Text("Ligth"),
          ),
        ],
      ),
    );
  }
}
