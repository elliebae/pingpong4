import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/send_pong_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({Key key}) : super(key: key);

  @override
  _AlertWidgetState createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 3,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 60,
                                    icon: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              HomePageWidget(),
                                        ),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Text(
                                      '핑퐁 알림',
                                      textAlign: TextAlign.center,
                                      style:
                                      FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'GmarketSans',
                                        color: FlutterFlowTheme.primaryColor,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.tertiaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: StreamBuilder<List<PingpongRecord>>(
                              stream: queryPingpongRecord(
                                queryBuilder: (pingpongRecord) => pingpongRecord
                                    .where('receiver',
                                        isEqualTo: currentUserReference)
                                    .orderBy('created_at', descending: true),
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
                                List<PingpongRecord>
                                    listViewPingpongRecordList = snapshot.data;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewPingpongRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewPingpongRecord =
                                        listViewPingpongRecordList[
                                            listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 10, 16, 10),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        '${listViewPingpongRecord.senderName}',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'Noto Sans',
                                                          color:
                                                              Color(0xFF222222),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          lineHeight: 1.5,
                                                        ),
                                                      ),
                                                      Text(
                                                        functions.pingpongAlarm(
                                                            listViewPingpongRecord
                                                                .ping),
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'Noto Sans',
                                                          color:
                                                              Color(0xFF222222),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          lineHeight: 1.5,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    listViewPingpongRecord
                                                        .message,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Noto Sans',
                                                      color: Color(0xFF222222),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      lineHeight: 1.5,
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        dateTimeFormat(
                                                            'Hm',
                                                            listViewPingpongRecord
                                                                .createdAt),
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'Noto Sans',
                                                          color:
                                                              Color(0xFF6C6C6C),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          lineHeight: 1.5,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () async {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                content: Text(
                                                                    '해당 메시지를 신고하시겠습니까?'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        '취소'),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed:
                                                                        () async {
                                                                      Navigator.pop(
                                                                          alertDialogContext);

                                                                      final reportCreateData =
                                                                          createReportRecordData(
                                                                        reportUser:
                                                                            listViewPingpongRecord.receiver,
                                                                        reportedUser:
                                                                            listViewPingpongRecord.sender,
                                                                        createdTime:
                                                                            getCurrentTimestamp,
                                                                        reportedPingpong:
                                                                            listViewPingpongRecord.reference,
                                                                      );
                                                                      await ReportRecord
                                                                          .collection
                                                                          .doc()
                                                                          .set(
                                                                              reportCreateData);
                                                                      await actions
                                                                          .sendReportMessage();
                                                                      await showDialog(
                                                                        context: context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            content: Text(
                                                                                '신고가 접수되었습니다.'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () =>
                                                                                    Navigator.pop(
                                                                                        alertDialogContext),
                                                                                child: Text(
                                                                                    'Ok'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      );
                                                                      ;
                                                                    },
                                                                    child: Text(
                                                                        '확인'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );

                                                        },
                                                        child: Text(
                                                          '신고하기',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Noto Sans',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              if ((listViewPingpongRecord
                                                      .ping) ==
                                                  true)
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: SendPongWidget(
                                                            receiverInfo:
                                                                listViewPingpongRecord
                                                                    .reference,
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  text: '퐁! 보내기',
                                                  options: FFButtonOptions(
                                                    width: 120,
                                                    height: 45,
                                                    color: Color(0xFFC462FF),
                                                    textStyle: FlutterFlowTheme
                                                        .subtitle2
                                                        .override(
                                                      fontFamily: 'Noto Sans',
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius: 12,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: Color(0xFFD1D1D1),
                                        ),
                                      ],
                                    );
                                  },
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
          ],
        ),
      ),
    );
  }
}
