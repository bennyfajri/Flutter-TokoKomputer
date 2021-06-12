import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:toko_komputer/detail_screen.dart';
import 'package:toko_komputer/model/data_barang.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return BarangList();
          } else if (constraints.maxWidth <= 1200) {
            return BarangGrid(
              gridCount: 4,
            );
          } else {
            return BarangGrid(
              gridCount: 6,
            );
          }
          // return BarangList();
        },
      ),
    );
  }
}

class BarangList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 4),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Find your best \nPC part",
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Available",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                        // SemuaBarang(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
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
            SizedBox(
              height: 16.0,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                "We recommended",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: barangRekomendasi.length,
                itemBuilder: (BuildContext context, int index) {
                  final DataBarang barang = barangRekomendasi[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(barang: barang);
                      }));
                    },
                    child: Card(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
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
    );
  }
}

// class SemuaBarang extends StatefulWidget {
//   @override
//   _SemuaBarangState createState() => _SemuaBarangState();
// }

// class _SemuaBarangState extends State<SemuaBarang> {
//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
//     int gridCount;
//     if (width <= 600) {
//       gridCount = 2;
//     } else if (width <= 1200) {
//       gridCount = 4;
//     } else {
//       gridCount = 6;
//     }
//     return SizedBox(
//       height: 30,
//       child: OutlinedButton(
//         onPressed: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return BarangGrid(gridCount: gridCount);
//           }));
//         },
//         style: ButtonStyle(
//           shape: MaterialStateProperty.all(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(18.0),
//               side: BorderSide(color: Colors.red),
//             ),
//           ),
//         ),
//         child: Text(
//           "Other",
//           style: TextStyle(fontSize: 16.0, color: Colors.black),
//         ),
//       ),
//     );
//   }
// }

class BarangGrid extends StatelessWidget {
  final int gridCount;

  BarangGrid({this.gridCount});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: GridView.count(
            crossAxisCount: gridCount,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: dataBarang.map((barang) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(barang: barang);
                  }));
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(barang.imageAsset[0],
                            fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          barang.name,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                        child: Text(
                            "${NumberFormat.simpleCurrency(locale: 'id').format(barang.price)}"),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
