import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/hasil.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
            children: [
              ListTile(
                title: const Text("counter_7"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const MyHomePage(title: "Program Counter"),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("Tambah Budget"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyFormPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("Data Budget"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHasilPage(),
                    ),
                  );
                },
              )
            ],
          ),
        );
      }
    }