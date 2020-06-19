import 'package:flutter/material.dart';

abstract class DetailSettingController extends State<DetailViewSet>{}
class DetailViewSet extends StatefulWidget {
  final String help;
  DetailViewSet({
    this.help
  });

  @override
  _DetailViewSetState createState() => _DetailViewSetState();
}

class _DetailViewSetState extends DetailSettingController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Text(widget.help),
      ),
    );
  }
}