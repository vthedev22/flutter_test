import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCQgCPVWCfQgyJdGvXe0K9Dvdrry688iP8",
            authDomain: "test-e495b.firebaseapp.com",
            projectId: "test-e495b",
            storageBucket: "test-e495b.appspot.com",
            messagingSenderId: "11297906909",
            appId: "1:11297906909:web:065791cd0edc355041bb34",
            measurementId: "G-JYW4JQNFRX"));
  } else {
    await Firebase.initializeApp();
  }
}
