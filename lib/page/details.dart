import 'package:counter_7/utils/drawer.dart';
import 'package:counter_7/utils/fetch.dart';
import 'package:counter_7/models/watchlist.dart';
import 'package:counter_7/page/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Detail extends StatelessWidget {
  const Detail ({super.key, required this.watch});
  final Watchlist watch;

  @override
  Widget build(BuildContext context) {
    var formatter = new DateFormat('MMM d, yyyy');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: DrawerWidget(),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          elevation: 20,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(height: 30),
                  Text(
                    watch.fields.title,
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  ListTile(
                    leading: const Text(
                      'Tanggal Rilis: ',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      formatter.format(watch.fields.releaseDate).toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                    dense: true,
                  ),
                  ListTile(
                    leading: const Text(
                      'Rating: ',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '${watch.fields.rating} / 5',
                      style: const TextStyle(fontSize: 20),
                    ),
                    dense: true,
                  ),
                  ListTile(
                    leading: const Text(
                      'Status: ',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      watch.fields.watched ? "Sudah Ditonton" : "Belum",
                      style: const TextStyle(fontSize: 20),
                    ),
                    dense: true,
                  ),
                  ListTile(
                      title: const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'Review: ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      dense: true,
                      subtitle: Text(
                        watch.fields.review,
                        style:
                        const TextStyle(fontSize: 20, color: Colors.black),
                      )),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                child: Text('Kembali'),
                style: ElevatedButton.styleFrom(
                    padding:
                    EdgeInsets.symmetric(horizontal: 120.0, vertical: 25.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    primary: Colors.blue),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWatchList()),
                  );
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ]),
    );
  }
}