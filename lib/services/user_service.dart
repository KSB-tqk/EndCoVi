import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:endcovi/models/endcovi_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  UserService._privateConstructor();
  static final UserService instance = UserService._privateConstructor();
  final FirebaseFirestore database = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Future<bool> isUserExisted(User user) async {
    DocumentSnapshot docs =
        await database.collection('users').doc(user.uid.toString()).get();
    return docs.exists;
  }

  Future addUser(EndCoViUser endcoviUser) async {
    await database.collection('users').doc(endcoviUser.uid).set(
          endcoviUser.toJson(),
        );
    return endcoviUser;
  }

  Future<EndCoViUser> getUser(String uid) async {
    EndCoViUser endcoviUser = EndCoViUser.empty();
    var snapshot = await database.collection('users').doc(uid.toString()).get();
    if (snapshot.exists) {
      endcoviUser = EndCoViUser.fromJson(snapshot.data());
    } else {
      print('Cant find document');
    }
    return endcoviUser;
  }
}
