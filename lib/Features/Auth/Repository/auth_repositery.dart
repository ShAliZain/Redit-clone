import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:practice/core/Provider/firebase_providers.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    firebaseFirestore: ref.read(firestoreProvider),
    firebaseAuth: ref.read(authProvider),
    googleSignIn: ref.read(googleSignInProvider),
  ),
);

class AuthRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  AuthRepository(
      {required FirebaseFirestore firebaseFirestore,
      required FirebaseAuth firebaseAuth,
      required GoogleSignIn googleSignIn})
      : _auth = firebaseAuth,
        _firestore = firebaseFirestore,
        _googleSignIn = googleSignIn;

  void signInWithGogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;

      final Credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      UserCredential userCredential =
          await _auth.signInWithCredential(Credential);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
