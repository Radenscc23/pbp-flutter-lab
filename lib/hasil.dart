import 'package:counter_7/drawer.dart';
import 'package:counter_7/model.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/form.dart';

class MyHasilPage extends StatelessWidget {
  const MyHasilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                for (var item in listModel)
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Text(item.judul,
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0)),
                          ),
                          subtitle: Text(
                            'Jumlah            : ' +
                                item.nominal +
                                '\n' +
                                'Tipe    : ' +
                                item.jenis +
                                '\n' +
                                'Tanggal penambahan          : ' +
                                item.dateTime,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
    }