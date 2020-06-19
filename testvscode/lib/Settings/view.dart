import 'package:flutter/material.dart';
import './Detail/View.dart';

abstract class SettingController extends State<SettingView>{}
class SettingView extends StatefulWidget {
  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends SettingController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _)=>DetailViewSet(
                help: 'Data & Storage',
              )
            )),
            leading: CircleAvatar(
              backgroundColor: Colors.green.withOpacity(.2),
              child: Icon(Icons.storage,color: Colors.green),
            ),
            title: Text('Data & Storage'),
          ),
          ListTile(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _)=>DetailViewSet(
                help: 'Question ?',
              )
            )),
            leading: CircleAvatar(
              backgroundColor: Colors.green.withOpacity(.2),
              child: Icon(Icons.help,color: Colors.green),
            ),
            title: Text('Help'),
          )
        ],
      ),
    );
      
  }
}