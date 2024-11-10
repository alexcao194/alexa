import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  final GoogleSignIn _googleSignIn;

  AuthRepository({required GoogleSignIn googleSignIn}) : _googleSignIn = googleSignIn;

  Future<GoogleSignInAccount?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      debugPrint(account.toString());
      return account;
    } catch (e) {
      debugPrint(e as String?);
      return null;
    }
  }

  Stream<GoogleSignInAccount?> listenToAuthChanges() {
    return _googleSignIn.onCurrentUserChanged;
  }
}