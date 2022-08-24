


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_get_demo/homepage_model.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{
  RxList<NotesModel> allData = <NotesModel>[].obs;


  @override
  onInit() {
    super.onInit();
    allData.bindStream(getNoteData());
  }


  ///retrieve data from cloud fireStore
  Stream<List<NotesModel>> getNoteData() {
    return FirebaseFirestore.instance
        .collection("Notes")
        .snapshots()
        .map(
          (event) =>
          event.docs.map((item) => NotesModel.fromMap(item)).toList(),
    );
  }


}