import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas-2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
//MULAI
  final _namaTextboxController = TextEditingController();
  final _nimTextboxController = TextEditingController();
  final _thnLahirTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //
          title: Text("Input Data"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Nama"),
                controller: _namaTextboxController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "NIM"),
                controller: _nimTextboxController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Tahun Lahir"),
                controller: _thnLahirTextboxController,
              ),

              //menambahkan margin
              Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                    child: Text('Simpan'),
                    onPressed: () {
                      String nama =
                          _namaTextboxController.text; //untuk menampung nama
                      String nim = _nimTextboxController.text;
                      int thnLahir = int.parse(
                          _thnLahirTextboxController.text); //parsing data

                      //ketika di klik akan pindah ke halaman tampil
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TampilData(
                                nama: nama, //nama yang telah diinputkan
                                nim: nim,
                                thnLahir: thnLahir,
                              )));
                    },
                  ))
            ],
          ),
        ));
  }
}

//hitung umur
int hitungUmur(int thnLahir) {
  DateTime sekarang = DateTime.now(); //tahun saat ini
  int thnSekarang = sekarang.year;
  int selisihthn = thnSekarang - thnLahir; //selisih tahun
  return selisihthn; //mengembalikan ke nilai umur sekarang
}
