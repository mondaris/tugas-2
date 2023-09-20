import 'package:flutter/material.dart';
import 'package:tugas-2/ui/form_data.dart';

class TampilData extends StatelessWidget {
  final String nama; //data yang dipassing
  final String nim; //variabel nim
  final int thnLahir;

  const TampilData(
      {Key? key, required this.nama, required this.nim, required this.thnLahir})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Column(
        children: [
          Text("Nama saya $nama"
              ", NIM $nim"
              ", dan umur saya adalah ${hitungUmur(thnLahir)} tahun"),
        ],
      ),
    );
  }
}
