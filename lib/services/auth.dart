import 'package:brew_crew/models/fb_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object based on User class
  FbUser _userFromFirebaseUser(User user){
    return user != null ? FbUser(uid: user.uid) : null;
  }

  // Sign in anonymously
  Future signInAnonymous() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  // Sign in with email and password

  // Register with email and password

  // Sign out

}