import 'package:firebase_get_demo/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomePageController homePageController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>
         ListView.builder(
          itemCount: homePageController.allData.length,
          itemBuilder: (context, index) {
          return Column(
            children: [
              Text(homePageController.allData[index].title??""),
              Text(homePageController.allData[index].description??""),
              Text(homePageController.allData[index].price??""),
            ],
          );
        },),
      ),
    );
  }

  Widget costumeBox({required String text,required String description,required String price}){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(text),
            Text(description),
          ],
        ),
      ),
    );
  }

}
