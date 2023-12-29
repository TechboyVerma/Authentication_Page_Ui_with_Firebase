import 'package:firebase_auth/firebase_auth.dart';

enum AuthError {
  generalError,
  emailAlreadyInUse,
  invalidEmail,
  weakPassword,
  // Add more error types as needed
}

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<dynamic> singup(String email, String password) async {
    try {
      UserCredential credential =
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      print('Signup Error: $e');
      if (e is FirebaseAuthException) {
        switch (e.code) {
          case 'email-already-in-use':
            return AuthError.emailAlreadyInUse;
          case 'invalid-email':
            return AuthError.invalidEmail;
          case 'weak-password':
            return AuthError.weakPassword;
        // Add more cases as needed
        }
      }
      return AuthError.generalError;
    }
  }

  Future<dynamic> singin(String email, String password) async {
    try {
      UserCredential credential =
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      print('Signin Error: $e');
      return AuthError.generalError;
    }
  }
}
