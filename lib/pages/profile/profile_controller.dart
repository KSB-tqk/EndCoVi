import 'dart:io';
import 'package:endcovi/pages/login/auth_controller.dart';
import 'package:endcovi/services/user_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  File image = File("null");
  String? imageUrl;
  late firebase_storage.UploadTask uploadTask;
  firebase_storage.Reference ref =
      firebase_storage.FirebaseStorage.instance.ref().child("images/");

  Future getAndUploadImage() async {
    final picker = ImagePicker();
    XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
    image = File(pickedFile!.path);
    update();

    ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child("images/")
        .child(AuthController.endcoviUser!.uid);
    uploadTask = ref.putFile(image);
    final avartarUrl = await ref.getDownloadURL();
    await UserService.instance.uploadProfileUrl(avartarUrl);
  }
}
