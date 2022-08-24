
import 'package:cloud_firestore/cloud_firestore.dart';

class NotesModel {
  String? docId;
  String? title;
  String? description;
  String? price;

  NotesModel(
      {this.docId, this.title, this.description, this.price});

  NotesModel.fromMap(DocumentSnapshot data) {
    docId = data.id;
    title = data['title'];
    description = data['description'];
    price = data['price'];
  }
}
