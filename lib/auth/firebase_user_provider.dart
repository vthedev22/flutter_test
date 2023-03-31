import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EditedByVFirebaseUser {
  EditedByVFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EditedByVFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EditedByVFirebaseUser> editedByVFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EditedByVFirebaseUser>(
      (user) {
        currentUser = EditedByVFirebaseUser(user);
        return currentUser!;
      },
    );
