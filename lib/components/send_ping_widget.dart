import 'package:firebase_analytics/firebase_analytics.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SendPingWidget extends StatefulWidget {
  const SendPingWidget({Key key}) : super(key: key);

  @override
  _SendPingWidgetState createState() => _SendPingWidgetState();
}

class _SendPingWidgetState extends State<SendPingWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 0,
              color: Color(0xFF707070),
              offset: Offset(0, 20),
              spreadRadius: 21,
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '핑! 보내기',
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'GmarketSans',
                        color: Color(0xFF9F00FF),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 24),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '핑은 \'내 닉네임\'으로만 전달됩니다.\n상대방은 내가 누구인지 알 수 없어요!',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText2.override(
                        fontFamily: 'GmarketSans',
                        color: Color(0xFF444444),
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                        lineHeight: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                      child: TextFormField(
                        controller: textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '받는 분 이름',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF888888),
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF6E8FF),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: TextFormField(
                        controller: textController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '내 닉네임',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF888888),
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF6E8FF),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        onChanged: (_) => EasyDebounce.debounce(
                          'textController3',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        controller: textController3,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '받는 분 전화번호',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF888888),
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF6E8FF),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.phone,
                        validator: (val) {
                          if (val.isEmpty) {
                            return '받는 분의 전화번호를 적어주세요!';
                          }

                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: textController4,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: '메시지',
                          labelStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF888888),
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                          hintText: '함께 보낼 메시지를 적어주세요',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF888888),
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF6E8FF),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                        textAlign: TextAlign.start,
                        validator: (val) {
                          if (val.isEmpty) {
                            return '메시지를 입력해주세요!';
                          }

                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: '취소',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50,
                          color: Colors.white,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF9F00FF),
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                          borderSide: BorderSide(
                            color: Color(0xFF9F00FF),
                            width: 1,
                          ),
                          borderRadius: 10,
                        ),
                      ),
                    ),
                    Container(
                      width: 16,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional(0, 0),
                    ),
                    Expanded(
                      child: StreamBuilder<List<UsersRecord>>(
                        stream: queryUsersRecord(
                          queryBuilder: (usersRecord) => usersRecord.where(
                              'phone_number',
                              isEqualTo: textController3.text),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                              ),
                            );
                          }
                          List<UsersRecord> buttonUsersRecordList =
                              snapshot.data;
                          return FFButtonWidget(
                            onPressed: () async {
                              if (!formKey.currentState.validate()) {
                                return;
                              }
                              if ((textController3.text) ==
                                  (currentPhoneNumber)) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      content: Text('나에게는 핑을 보낼 수 없습니다!'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (functions.isListEmpty(
                                  buttonUsersRecordList.toList())) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('받는 분이 아직 핑퐁에 가입하지 않았어요!'),
                                      content: Text(
                                          '대신 받는 분에게 익명의 초대장을 발송했어요. 핑퐁이 이 메시지를 보관하고 있다가 받는 분이 핑퐁에 가입하는대로 전달할게요.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () async {
                                                Navigator.pop(alertDialogContext);
                                                Navigator.pop(context);
                                          },
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                print("hello");
                                await actions.sendSlackMessage(
                                  textController3.text,
                                );
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      content: Text('핑이 성공적으로 전달되었습니다!'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                              final pingpongCreateData =
                                  createPingpongRecordData(
                                ping: true,
                                sender: currentUserReference,
                                receiver: functions.getReceiver(
                                    buttonUsersRecordList
                                        .map((e) => e.reference)
                                        .toList()),
                                message: textController4.text,
                                createdAt: getCurrentTimestamp,
                                senderName: valueOrDefault<String>(
                                  textController2.text,
                                  '(알 수 없음)',
                                ),
                                receiverNumber: textController3.text,
                                customerId: functions.isListEmpty(
                                    buttonUsersRecordList.toList())? "" : functions.getReceiver(
                                    buttonUsersRecordList
                                        .map((e) => e.reference)
                                        .toList()).id,
                              );
                              await PingpongRecord.collection
                                  .doc()
                                  .set(pingpongCreateData);

                              //firebase analytics
                              await FirebaseAnalytics.instance
                                  .logEvent(
                                  name: 'send_ping',
                                  parameters: {
                                    'sender_id': currentUserUid,
                                    'receiver_number': textController3
                                  }
                              );

                              Navigator.pop(context);
                            },
                            text: '보내기',
                            options: FFButtonOptions(
                              width: 130,
                              height: 50,
                              color: Color(0xFF9F00FF),
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'GmarketSans',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: false,
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
