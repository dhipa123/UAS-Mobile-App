import 'package:flutter/material.dart';
import './Home/view.dart';
import './Kategori/view.dart';
import './Settings/View.dart';

class HomeApps extends StatefulWidget {
  @override
  _HomeAppsState createState() => _HomeAppsState();
}

class _HomeAppsState extends State<HomeApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keranjang Kita',
      routes: {
        '/' : (BuildContext _) => HomeView(),
        '/kategori' : (BuildContext _) => KategoriView(),
        '/Setting' : (BuildContext _) => SettingView()
      },
      initialRoute: '/',
    );
  }
}