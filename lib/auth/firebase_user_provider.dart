import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CourtManagerFirebaseUser {
  CourtManagerFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CourtManagerFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CourtManagerFirebaseUser> courtManagerFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CourtManagerFirebaseUser>(
      (user) {
        currentUser = CourtManagerFirebaseUser(user);
        return currentUser!;
      },
    );
