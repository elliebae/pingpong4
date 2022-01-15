// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom action code
// import '../../backend/backend.dart';
// import '../../flutter_flow/flutter_flow_theme.dart';
// import '../../flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';

// THE ABOVE IMPORTS WILL BE ADDED AUTOMATICALLY. DO NOT INCLUDE THESE IN CODE EDITOR.
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<http.Response> sendSlackMessage(String receiverPhoneNumber) async {
  return http.post(
    Uri.parse(
        'https://hooks.slack.com/services/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'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'text': receiverPhoneNumber,
    }),
  );
}
