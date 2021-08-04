import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_quran_app/components/appbar.dart';
import 'package:simple_quran_app/components/divider.dart';
import 'package:simple_quran_app/controller/surah_controller.dart';
import 'package:simple_quran_app/data/model/ayah_model.dart';

class SurahPage extends GetView<SurahController> {
  SurahController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var id = Get.parameters['id'];
    controller.getSurahById(id);

    return Scaffold(
        appBar: getSimpleQAppBar(),
        body: ListView(
          children: [
            SizedBox(
              height: 12,
            ),
            id != '1' && id != '9'
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        '﷽',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  )
                : SizedBox(),
            VerticalPadedDivider(),
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (_, index) => AyahTile(
                    ayah: controller.surah[index],
                    number: index + 1,
                  ),
                  itemCount: controller.surah.length,
                ))
          ],
        ));
  }
}

class AyahTile extends StatelessWidget {
  final AyahModel ayah;
  final int number;
  const AyahTile({required this.ayah, required this.number});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      child: Column(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(color: Colors.black),
                        child: Center(
                          child: Text(
                            '$number',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )),
                  Flexible(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            ayah.text,
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(ayah.translation)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
            )
          ],
        ),
      ),
    );
  }
}
