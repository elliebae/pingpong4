import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePageWidget extends StatefulWidget {
  const WelcomePageWidget({Key key}) : super(key: key);

  @override
  _WelcomePageWidgetState createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
        child: AuthUserStreamWidget(
          child: StreamBuilder<List<PingpongRecord>>(
            stream: queryPingpongRecord(
              queryBuilder: (pingpongRecord) => pingpongRecord
                  .where('receiver_number', isEqualTo: currentPhoneNumber),
              singleRecord: true,
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
              List<PingpongRecord> columnPingpongRecordList = snapshot.data;
              // Return an empty Container when the document does not exist.
              // if (snapshot.data.isEmpty) {
              //   return Container();
              // }
              final columnPingpongRecord = columnPingpongRecordList.isNotEmpty
                  ? columnPingpongRecordList.first
                  : null;
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'Welcome!',
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF9F00FF),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                        child: Text(
                          '${currentUserDisplayName}님의 회원가입이 완료되었습니다!',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF444444),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '이제 핑퐁을 시작해볼까요?',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF444444),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (columnPingpongRecord != null) {
                                  final pingpongUpdateData =
                                  createPingpongRecordData(
                                    receiver: currentUserReference,
                                    customerId: currentUserReference.id,
                                  );
                                  await columnPingpongRecord.reference
                                      .update(pingpongUpdateData);
                                }
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePageWidget(),
                                  ),
                                );
                              },
                              text: '핑퐁! 시작하기',
                              options: FFButtonOptions(
                                width: 130,
                                height: 54,
                                color: Color(0xFF9F00FF),
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Noto Sans',
                                  color: Colors.white,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
