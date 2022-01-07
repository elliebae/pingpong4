import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../landing_page/landing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LandingPageWidget(),
                  ),
                );
              },
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              '로그인',
                              style: FlutterFlowTheme.title1.override(
                                fontFamily: 'GmarketSans',
                                color: Color(0xFF9F00FF),
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: false,
                              ),
                            ),
                          ),
                          Text(
                            '좋아하는 사람과 핑퐁을 주고받으세요!',
                            style: FlutterFlowTheme.bodyText1.override(
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
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: TextFormField(
                        controller: emailTextController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: '이메일',
                          labelStyle: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF888888),
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                          hintText: '이메일을 입력해주세요.',
                          hintStyle: FlutterFlowTheme.bodyText2.override(
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF6E8FF),
                        ),
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                        validator: (val) {
                          if (val.isEmpty) {
                            return '이메일을 입력해주세요!';
                          }

                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: TextFormField(
                        controller: passwordTextController,
                        obscureText: !passwordVisibility,
                        decoration: InputDecoration(
                          labelText: '비밀번호',
                          labelStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'GmarketSans',
                            color: Color(0xFF888888),
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                          hintText: '비밀번호를 입력해주세요.',
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF6E8FF),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                        validator: (val) {
                          if (val.isEmpty) {
                            return '비밀번호를 입력해주세요!';
                          }

                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (!formKey.currentState.validate()) {
                          return;
                        }
                        final user = await signInWithEmail(
                          context,
                          emailTextController.text,
                          passwordTextController.text,
                        );
                        if (user == null) {
                          return;
                        }

                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePageWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      text: '시작하기',
                      options: FFButtonOptions(
                        width: 300,
                        height: 54,
                        color: Color(0xFF9F00FF),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Noto Sans',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
            ],
          ),
        ),
      ),
    );
  }
}
