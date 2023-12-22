import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCvwqSoT4XAnBWaWGz_T8-h2FOnoh0jqn8",
            authDomain: "intracomercial-a807e.firebaseapp.com",
            projectId: "intracomercial-a807e",
            storageBucket: "intracomercial-a807e.appspot.com",
            messagingSenderId: "803129091765",
            appId: "1:803129091765:web:99ffa70126413c6bbd40fc"));
  } else {
    await Firebase.initializeApp();
  }
}
