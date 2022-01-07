import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String pingpongAlarm(bool ping) {
  if (ping) {
    return '님이 핑을 보냈어요!';
  } else {
    return '님이 퐁을 보냈어요!';
  }
}

bool identicalExists(
  List<String> phoneNumberList,
  String inputPhoneNumber,
) {
  if (phoneNumberList.contains(inputPhoneNumber)) {
    return false;
  } else {
    return true;
  }
}

DocumentReference getReceiver(List<DocumentReference> receiverList) {
  if (receiverList.isNotEmpty) {
    return receiverList.first;
  }
}

bool isListEmpty(List<UsersRecord> identicalDataList) {
  if (identicalDataList.isEmpty) {
    return true;
  } else {
    return false;
  }
}
