import 'package:counter_7/utils/drawer.dart';
import 'package:counter_7/models/model.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/hasil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';


List<FormModels> listModel = [];

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  String _nominal = "";
  String _jenis = "Pemasukan";
  DateTime date = DateTime.now();
  List<String> jenisBudget = ["Pemasukan", "Pengeluaran"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Form Budget'),
    ),
    drawer: DrawerWidget(),
    body: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
        Padding(
        // Input Judul
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Judul",
            labelText: "Judul",
            // Menambahkan circular border agar lebih rapi
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          // Menambahkan behavior saat nama diketik
          onChanged: (String? value) {
            setState(() {
              _judul = value!;
            });
          },
          // Menambahkan behavior saat data disimpan
          onSaved: (String? value) {
            setState(() {
              _judul = value!;
            });
          },
          // Validator sebagai validasi form
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Judul tidak boleh kosong!';
            }
            return null;
          },
        ),
      ),
    Padding(
      // Menggunakan padding sebesar 8 pixels
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Nominal",
            // Menambahkan circular border agar lebih rapi
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        // Menambahkan behavior saat nama diketik
        onChanged: (String? value) {
          setState(() {
              _nominal = value!;
          });
        },
        // Menambahkan behavior saat data disimpan
        onSaved: (String? value) {
          setState(() {
              _nominal = value!;
        });
        },
        // Validator sebagai validasi form
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Nominal tidak boleh kosong!';
          }
          if (int.parse(value) == 0) {
            return 'Nominal tidak boleh nol!';
          }
            return null;
          },
        ),
      ),
      SizedBox(
        height: 15,
      ),
    TextButton(
        child: Text('Silahkan Pilih tanggal'),
        onPressed: () async {
            DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: date,
              firstDate: DateTime(2000),
              lastDate: DateTime(2200));
            if (newDate == null) return;
            setState(() => date = newDate);
          },
      ),
      SizedBox(
        height: 20,
      ),
    DropdownButton(
        value: _jenis,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: jenisBudget.map((String items) {
          return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            _jenis = newValue!;
        });
      },
    ),
    SizedBox(
      height: 85,
    ),
              ElevatedButton(
                child: Text('Simpan Data'),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 135.0, vertical: 25.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    primary: Colors.purpleAccent),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    var formatter = new DateFormat('MMM d, yyyy');
                    String formattedDate = formatter.format(date);
                    final budget = FormModels(
                        judul: _judul,
                        nominal: _nominal,
                        jenis: _jenis,
                        dateTime: formattedDate);
                    listModel.add(budget);
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor:
                          Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 15,
                          child: Container(
                            child: ListView(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, right: 50, left: 50),
                              shrinkWrap: true,
                              children: <Widget>[
                                Center(
                                    child: const Text(
                                        'Data berhasil disimpan')),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  child: Text('Kembali'),
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 120.0,
                                          vertical: 25.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(10.0)),
                                      primary: Colors.blue),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ],
        ),
      ),
    ),
    );
  }
}

