import 'package:flutter/material.dart';

abstract class HomeController extends State<HomeView>{}
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Kita'),
        backgroundColor: Colors.green,
      ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              UserAccountsDrawerHeader(
               accountEmail: Text('dipaandaresta@gmail.com'),
               accountName: Text('Dhipa Andaresta'),
              ),
              ListTile(
                title:Text('Home'),
                leading:CircleAvatar(
                  child:Icon(Icons.home),
                ),
              ),
              ListTile(
                onTap: ()=> Navigator.of(context).pushNamed('/kategori'),
                title:Text('Kategori'),
                leading:CircleAvatar(
                  child:Icon(Icons.category),
                ),
              ),
              Divider(),
              ListTile(
                onTap: ()=> Navigator.of(context).pushNamed('/Setting'),
                title:Text('Settings'),
                leading:CircleAvatar(
                  child:Icon(Icons.settings),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
      ),
    );
  }
}
  