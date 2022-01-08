import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SendPongWidget extends StatefulWidget {
  const SendPongWidget({
    Key key,
    this.receiverInfo,
  }) : super(key: key);

  final DocumentReference receiverInfo;

  @override
  _SendPongWidgetState createState() => _SendPongWidgetState();
}

class _SendPongWidgetState extends State<SendPongWidget> {
  TextEditingController textController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: StreamBuilder<PingpongRecord>(
        stream: PingpongRecord.getDocument(widget.receiverInfo),
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
          final containerPingpongRecord = snapshot.data;
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 410,
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
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '퐁! 보내기',
                          textAlign: TextAlign.start,
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
                    padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '나를 좋아하는 사람에게\n답장을 보내주세요!',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'GmarketSans',
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
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xFFC462FF),
                          shape: BoxShape.circle,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              containerPingpongRecord.senderName,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Noto Sans',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.asset(
                                  'assets/images/mzprc_.png',
                                ).image,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${containerPingpongRecord.message}',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Noto Sans',
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                            child: TextFormField(
                              controller: textController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: '퐁! 메세지를 입력해주세요',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: '취소',
                            options: FFButtonOptions(
                              width: 150,
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
                            color: FlutterFlowTheme.tertiaryColor,
                          ),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (!formKey.currentState.validate()) {
                                return;
                              }
                              final pingpongCreateData =
                                  createPingpongRecordData(
                                ping: false,
                                sender: currentUserReference,
                                receiver: containerPingpongRecord.sender,
                                message: textController.text,
                                createdAt: getCurrentTimestamp,
                                senderName: currentUserDisplayName,
                                customerId: containerPingpongRecord.sender.id,
                              );
                              await PingpongRecord.collection
                                  .doc()
                                  .set(pingpongCreateData);
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    content: Text('퐁이 전달되었습니다.'),
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
                              Navigator.pop(context);
                            },
                            text: '보내기',
                            options: FFButtonOptions(
                              width: 150,
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
                              borderRadius: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
