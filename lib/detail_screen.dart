import 'package:flutter/material.dart';
import 'package:toko_komputer/detail_mobile_page.dart';
import 'package:toko_komputer/model/data_barang.dart';

class DetailScreen extends StatelessWidget {
  final DataBarang barang;

  DetailScreen({@required this.barang});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(barang: barang);
        } else {
          return DetailMobilePage(barang: barang);
        }
      },
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final DataBarang barang;

  DetailWebPage({this.barang});
  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
