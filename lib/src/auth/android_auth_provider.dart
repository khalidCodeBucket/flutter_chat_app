import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_provider_base.dart';

class _AndroidAuthProvider implements AuthProviderBase {
  @override
  Future<FirebaseApp> initialize() async {
    return await Firebase.initializeApp(
      name: 'FNF Messaging',
      options: FirebaseOptions(
        apiKey: "AIzaSyA7aZIrG0v5Yxd-dU0pdMvIfp2M4jfI-Zs",
        authDomain: "fnf-messaging-app.firebaseapp.com",
        databaseURL: "https://fnf-messaging-app.firebaseio.com",
        projectId: "fnf-messaging-app",
        storageBucket: "fnf-messaging-app.appspot.com",
        messagingSenderId: "733415140527",
        appId: "1:733415140527:android:984a1c5d33ff5c940c785a",
      ),
    );
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    // ignore: todo
    // TODO: Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // ignore: todo
    // TODO: Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // ignore: todo
    // TODO: Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // ignore: todo
    // TODO: Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

class AuthProvider extends _AndroidAuthProvider {}
