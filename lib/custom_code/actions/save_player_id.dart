

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

savePlayerId() async {
//Call the required instances.
  final firebaseAuth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  try {
    final subState = await OneSignal.shared.getDeviceState();
    final deviceId = subState.userId;
    final firestoreDeviceIdReference = await firestore
        .collection("OneSignalIds")
        .where("customer_id", isEqualTo: firebaseAuth.currentUser?.uid ?? "")
        .get();
    if (firestoreDeviceIdReference != null &&
        firestoreDeviceIdReference.size != 0) {
      await firestore
          .collection("OneSignalIds")
          .doc(firestoreDeviceIdReference.docs[0].id)
          .update({
        "player_ids": FieldValue.arrayUnion([deviceId])
      });
    } else {
      await firestore.collection("OneSignalIds").add({
        "customer_id": firebaseAuth.currentUser?.uid ?? "",
        "player_ids": [deviceId],
      });
    }
    print("^^^^^^^^^^^");
  } catch (e) {
    print("ERROR $e");
  }
}
