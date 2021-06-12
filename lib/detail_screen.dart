import 'package:flutter/material.dart';
import 'package:toko_komputer/detail_mobile_page.dart';
import 'package:toko_komputer/model/data_barang.dart';
import 'package:intl/intl.dart';

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
  TextEditingController _textEditingController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 64,
          vertical: 16,
        ),
        child: Center(
          child: Container(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Toko Komputer',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.barang.imageAsset[1]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16),
                          Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Scrollbar(
                                isAlwaysShown: true,
                                controller: _scrollController,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: widget.barang.imageAsset.map((url) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(url),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              )),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: 32,
                    // ),
                    Expanded(
                      flex: 2,
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.barang.name,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  "Terjual ${widget.barang.terjual.toString()}",
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "${NumberFormat.simpleCurrency(name: 'Rp').format(widget.barang.price)}",
                                  style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.barang.description,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Pembelian",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              Container(
                                child: TextField(
                                  controller: _textEditingController,
                                  textInputAction: TextInputAction.go,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      labelText: "Jumlah",
                                      hintText: "1, 2, 3 .."),
                                ),
                              ),
                              Container(
                                child: Text("Stock ${widget.barang.stock}"),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    var jumlah = widget.barang.price *
                                        int.parse(_textEditingController.text);
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text(
                                          "Total belanja anda : ${NumberFormat.simpleCurrency(name: "Rp").format(jumlah)}"),
                                      duration: Duration(seconds: 3),
                                    ));
                                  },
                                  child: Text("Beli Sekarang"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(16.0),
                        child: Text(
                          "Barang Lainnya",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 16),
                        height: 200,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: dataBarang.length,
                          itemBuilder: (BuildContext context, int index) {
                            final DataBarang barang = dataBarang[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DetailScreen(barang: barang);
                                }));
                              },
                              child: Card(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          barang.imageAsset[0],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 10),
                                          Text(
                                            barang.type,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 4),
                                          Text(barang.name),
                                          SizedBox(height: 4),
                                          Text(
                                            "${NumberFormat.simpleCurrency(name: 'Rp').format(barang.price)}",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
