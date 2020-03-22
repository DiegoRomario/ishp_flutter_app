import 'package:flutter/material.dart';
import 'package:ishp_flutter_app/blocs/theme.bloc.dart';
import 'package:ishp_flutter_app/ui/android/pages/home.page.dart';
import 'package:ishp_flutter_app/ui/android/pages/tabs.pages.dart';
import 'package:provider/provider.dart';

import 'blocs/cart.bloc.dart';
import 'blocs/home.bloc.dart';
import 'blocs/user.bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeBloc>.value(
          value: HomeBloc(),
        ),
        ChangeNotifierProvider<CartBloc>.value(
          value: CartBloc(),
        ),
        ChangeNotifierProvider<UserBloc>.value(
          value: UserBloc(),
        ),
        ChangeNotifierProvider<ThemeBloc>.value(
          value: ThemeBloc(),
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<ThemeBloc>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: bloc.theme,
      // home: TabsPage();
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
