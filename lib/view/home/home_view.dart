import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_quran_app/components/appbar.dart';
import 'package:simple_quran_app/components/divider.dart';
import 'package:simple_quran_app/controller/home_controller.dart';
import 'package:simple_quran_app/routes/routes_name.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return HomeScaffold();
  }
}

class HomeScaffold extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    controller.getSurahList();
    return Scaffold(
        appBar: getSimpleQAppBar(),
        body: ListView(
          children: [
            SizedBox(
              height: 42,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "bookmark",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("You have no bookmark yet"),
            ),
            SizedBox(
              height: 24,
            ),
            VerticalPadedDivider(),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                "List Surah",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Obx(
              () => ListView.builder(
                itemCount: controller.surahList.length,
                itemBuilder: (context, index) {
                  return SurahTile(
                    name: controller.surahList[index].name,
                    number: index + 1,
                  );
                },
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              ),
            )
          ],
        ));
  }
}

class SurahTile extends StatelessWidget {
  final String name;
  final int number;

  SurahTile({required this.name, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(color: Colors.black),
              ),
            ],
          ),
          title: Text(
            name,
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Get.toNamed(RoutesName.surah_no_params + '/$number');
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Divider(
            height: 0,
          ),
        )
      ],
    );
  }
}
