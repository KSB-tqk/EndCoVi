import 'package:endcovi/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticService {
  AuthenticService._privateConstructor();
  static final AuthenticService instance =
      AuthenticService._privateConstructor();

  FirebaseAuth? _firebaseAuth;
  Rxn<User> _firebaseUser = Rxn<User>();
  String? get user => _firebaseUser.value?.email;

  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _googleSignInAccount;
  GoogleSignInAccount get googleAccount => _googleSignInAccount!;

  User? currentUser;

  Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    _firebaseAuth = FirebaseAuth.instance;
    await Future.delayed(Duration(seconds: 1));
    return firebaseApp;
  }

  @override
  void onInit() {
    _firebaseUser.bindStream(_firebaseAuth!.authStateChanges());
  }

  Future<User?> createUser(String email, String password) async {
    try {
      currentUser = (await _firebaseAuth!
              .createUserWithEmailAndPassword(email: email, password: password))
          .user;
      Get.offAllNamed(Routes.LOGIN);
    } catch (e) {
      Get.snackbar("Error creating account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
    return currentUser;
  }

  Future<User?> login(String email, String password) async {
    try {
      currentUser = (await _firebaseAuth!
              .signInWithEmailAndPassword(email: email, password: password))
          .user;
      Get.offAllNamed(Routes.DASHBOARD);
    } catch (e) {
      Get.snackbar("Error login account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
    return currentUser;
  }

  void signOut() async {
    try {
      await _firebaseAuth!.signOut();
    } catch (e) {
      Get.snackbar("Error log out account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<User?> signInWithGoogle() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      _googleSignInAccount = googleUser;

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      currentUser =
          (await FirebaseAuth.instance.signInWithCredential(credential)).user;
    }
    return currentUser;
  }

  User? getCurrentUser() => FirebaseAuth.instance.currentUser;
}
