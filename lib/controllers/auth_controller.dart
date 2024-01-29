import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:speak_up/constants.dart';
import 'package:speak_up/models/user.dart' as model;
import 'package:speak_up/views/screens/auths/login_screen.dart';
import 'package:speak_up/views/screens/selecting_screen.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();

  late Rx<User?> _user;
  late Rx<File?> _pickedImage;

  File? get profilePhoto => _pickedImage.value;
  User get user => _user.value!;


  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    _user = Rx<User?>(firebaseAuth.currentUser);
    _user.bindStream(firebaseAuth.authStateChanges());
    ever(_user, _setInitialScreen);
  }

  _setInitialScreen (User? user) {
    if(user == null) {
      Get.offAll(() => LoginScreen());
    } else {
      Get.offAll(() => const SelectingScreen());
    }
  }

  Future<bool> checkLoginStatus() async {
    // Check if the user is currently logged in
    User? user = firebaseAuth.currentUser;
    return user != null;
  }

  void pickImage() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(pickedImage!=null){
      Get.snackbar('Profile Picture', 'You have Successfully selected your profile picture');
    }
    _pickedImage = Rx<File?>(File(pickedImage!.path));
  }

  Future<String> _uploadToStorage(File image) async {
    Reference ref = firebaseStorage
        .ref()
        .child('profilePics')
        .child(firebaseAuth.currentUser!.uid);
    UploadTask uploadTask = ref.putFile(image);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final cred = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(cred);
  }

  void registerUser(String username,String email,String password,File? image) async {
    try{
      if(username.isNotEmpty && email.isNotEmpty && password.isNotEmpty && image!=null)
        {
          UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
              email: email,
              password: password
          );
          String downloadUrl = await _uploadToStorage(image);
          model.User user = model.User(
            name: username,
            email: email,
            uid: cred.user!.uid,
            profilePhoto: downloadUrl,
          );
          await firestore
              .collection('users')
              .doc(cred.user!.uid)
              .set(user.toJson());
        }
      else
        {
          Get.snackbar(
            'Error in creating an Account',
            'Please Enter All The Fields'
          );

        }

    }catch(e){
      Get.snackbar(
          'Error in creating an Account',
          e.toString(),
      );

    }

  }

  void loginUser(String email, String password) async {
    try {
      if(email.isNotEmpty && password.isNotEmpty)
        {
          await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
          print('Logged In');

        }
      else
        {
          Get.snackbar(
              'Error Logging in Account',
              'Please Enter All The Fields'
          );

        }

    } catch(e) {
      Get.snackbar(
        'Error Logging in Account',
        e.toString(),
      );

    }

  }

  void signOut() async {
    await firebaseAuth.signOut();

  }
}