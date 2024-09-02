import 'package:flutter/material.dart';
import 'package:flutterhooks/Model/Model_bangun.dart';
import 'package:flutterhooks/component_page/Adapter.dart';
import 'package:go_router/go_router.dart';

class listbangun extends StatefulWidget {
  const listbangun({super.key});

  @override
  State<listbangun> createState() => _listbangunState();
}

class _listbangunState extends State<listbangun> {
 List<ModelBangun> dataBangun = [
    ModelBangun("Persegi", "S*S", "images/persegi.jpeg"),
    ModelBangun("Persegi Panjang", "p*l", "images/persegi.jpeg"),
    ModelBangun("Lingkaran", "Pi*r*r", "images/persegi.jpeg"),
    
  ];
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("List Bangun Datar"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: dataBangun.length,
            itemBuilder: (context, index) {
              return AdapterList(modelBangun: dataBangun[index]);
            }),
      ),
    );
  }
}