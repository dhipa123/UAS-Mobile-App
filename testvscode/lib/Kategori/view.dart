import 'package:flutter/material.dart';
import './Detail/view.dart';

abstract class KategoriController extends State<KategoriView>{}
class KategoriView extends StatefulWidget {
  @override
  _KategoriViewState createState() => _KategoriViewState();
}

class _KategoriViewState extends KategoriController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Barang'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _)=>DetailView(
                namaBarang: 'Bayam',
              )
            )),
            leading: CircleAvatar(
              backgroundColor: Colors.green.withOpacity(.2),
              child: Icon(Icons.favorite,color: Colors.green),
            ),
            title: Text('Sayur'),
          ),
          ListTile(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _)=>DetailView(
                namaBarang: 'Apel',
              )
            )),
            leading: CircleAvatar(
              backgroundColor: Colors.green.withOpacity(.2),
              child: Icon(Icons.favorite,color: Colors.green),
            ),
            title: Text('Buah'),
          )
        ],
      ),
    );
      
  }
}