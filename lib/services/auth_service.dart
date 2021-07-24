import 'package:endcovi/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class AuthenticService {
  AuthenticService._privateConstructor();
  static final AuthenticService instance =
      AuthenticService._privateConstructor();

  FirebaseAuth? _firebaseAuth;

  Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    _firebaseAuth = FirebaseAuth.instance;
    await Future.delayed(Duration(seconds: 1));
    return firebaseApp;
  }

  FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> _firebaseUser = Rxn<User>();

  String? get user => _firebaseUser.value?.email;

  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  Future createUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.offAllNamed(Routes.LOGIN);
    } catch (e) {
      Get.snackbar("Error creating account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAllNamed(Routes.DASHBOARD);
    } catch (e) {
      Get.snackbar("Error login account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void singOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      Get.snackbar("Error log out account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  User? getCurrentUser() => FirebaseAuth.instance.currentUser;
}
