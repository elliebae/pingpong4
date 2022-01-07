import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Pingpong4FirebaseUser {
  Pingpong4FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

Pingpong4FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Pingpong4FirebaseUser> pingpong4FirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<Pingpong4FirebaseUser>(
        (user) => currentUser = Pingpong4FirebaseUser(user));
