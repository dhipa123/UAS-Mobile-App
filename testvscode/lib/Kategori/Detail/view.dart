import 'package:flutter/material.dart';

abstract class DetailKategoriController extends State<DetailView>{}
class DetailView extends StatefulWidget {
  final String namaBarang;
  DetailView({
    this.namaBarang
  });

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends DetailKategoriController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Barang'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Text(widget.namaBarang),
      ),
    );
  }
}