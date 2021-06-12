import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'detail_screen.dart';
import 'model/data_barang.dart';

class DetailMobilePage extends StatefulWidget {
  final DataBarang barang;

  DetailMobilePage({this.barang});

  @override
  _DetailMobilePageState createState() => _DetailMobilePageState();
}

class _DetailMobilePageState extends State<DetailMobilePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    height: 270,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: widget.barang.imageAsset.map(
                    (e) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Image.asset(
                                e,
                                fit: BoxFit.cover,
                              ));
                        },
                      );
                    },
                  ).toList(),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.barang.imageAsset.map((e) {
                      int index = widget.barang.imageAsset.indexOf(e);
                      return Container(
                        width: 6,
                        height: 6,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Color.fromRGBO(0, 0, 0, 0.8)
                              : Color.fromRGBO(0, 0, 0, 0.3),
                        ),
                      );
                    }).toList(),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "${NumberFormat.simpleCurrency(name: 'Rp').format(widget.barang.price)}",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 10),
                    child: Text(
                      widget.barang.name,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 20.0),
                    child: Text(
                      "Terjual ${widget.barang.terjual}",
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Stok",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Text(
                      widget.barang.stock.toString(),
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Detail",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Text(
                      widget.barang.description,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Barang lainnya",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
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
                                    borderRadius: BorderRadius.circular(8.0),
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
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: TextFieldAlertDialog(dataBarang: widget.barang),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class TextFieldAlertDialog extends StatefulWidget {
  final DataBarang dataBarang;

  TextFieldAlertDialog({this.dataBarang});

  @override
  _TextFieldAlertDialogState createState() => _TextFieldAlertDialogState();
}

class _TextFieldAlertDialogState extends State<TextFieldAlertDialog> {
  TextEditingController _textEditingController = TextEditingController();

  Future _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Konfirmasi"),
            content: TextField(
              controller: _textEditingController,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: "Jumlah", hintText: "1, 2, 3, .."),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Batal"),
              ),
              ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  Navigator.of(context).pop();
                  showSnackbar(context);
                },
              ),
            ],
          );
        });
  }

  void showSnackbar(BuildContext context) {
    var jumlah =
        widget.dataBarang.price * int.parse(_textEditingController.text);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
          "Total belanja anda : ${NumberFormat.simpleCurrency(name: "Rp").format(jumlah)}"),
      duration: Duration(seconds: 3),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _displayDialog(context),
      child: Text("Beli Sekarang"),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
