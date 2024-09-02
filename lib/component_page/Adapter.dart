import 'package:flutter/material.dart';
import 'package:flutterhooks/BangunDatar.dart';
import 'package:flutterhooks/Model/Model_bangun.dart';
import 'package:flutterhooks/widget/myText.dart';
import 'package:go_router/go_router.dart';

class AdapterList extends StatelessWidget {
  final ModelBangun modelBangun;
  const AdapterList({super.key, required this.modelBangun});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/bangun/${modelBangun.nama}');
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        child: MyText(
            image: modelBangun.image,
            nama: modelBangun.nama,
            Rumus: modelBangun.Rumus,
            marginLeft: 20,
            widthImage: 50),
      ),
    );
  }
}
