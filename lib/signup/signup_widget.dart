import 'package:firebase_auth/firebase_auth.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../landing_page/landing_page_widget.dart';
import '../welcome_page/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_code/actions/index.dart' as actions;


class SignupWidget extends StatefulWidget {
  const SignupWidget({Key key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  TextEditingController confirmPasswordTextController;
  bool passwordVisibility2;
  TextEditingController emailTextController;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController passwordTextController;
  bool passwordVisibility1;
  bool checkboxListTileValue1;
  bool checkboxListTileValue2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordTextController = TextEditingController();
    passwordVisibility2 = false;
    emailTextController = TextEditingController();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility1 = false;
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              '????????????',
                              style: FlutterFlowTheme.title1.override(
                                fontFamily: 'GmarketSans',
                                color: Color(0xFF9F00FF),
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: false,
                              ),
                            ),
                          ),
                          Text(
                            '?????? ????????? ?????? ???????????????!',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'GmarketSans',
                              color: Color(0xFF444444),
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                          ),
                        ],
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
                        controller: textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '??????',
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
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                        validator: (val) {
                          if (val.isEmpty) {
                            return '????????? ??????????????????!';
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
                        controller: textController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '????????? ??????',
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
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                        validator: (val) {
                          if (val.isEmpty) {
                            return '??????????????? ??????????????????!';
                          }
                          if (val.length < 11) {
                            return '??????????????? ???????????? ????????????!';
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
                        controller: emailTextController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '?????????',
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
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'GmarketSans',
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) {
                          if (val.isEmpty) {
                            return '???????????? ??????????????????!';
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
                        obscureText: !passwordVisibility1,
                        decoration: InputDecoration(
                          hintText: '????????????',
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
                              () => passwordVisibility1 = !passwordVisibility1,
                            ),
                            child: Icon(
                              passwordVisibility1
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
                            return '??????????????? ??????????????????!';
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
                        controller: confirmPasswordTextController,
                        obscureText: !passwordVisibility2,
                        decoration: InputDecoration(
                          hintText: '???????????? ??????',
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
                              () => passwordVisibility2 = !passwordVisibility2,
                            ),
                            child: Icon(
                              passwordVisibility2
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
                            return '??????????????? ??????????????????!';
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: CheckboxListTile(
                        value: checkboxListTileValue1 ??= false,
                        onChanged: (newValue) =>
                            setState(() => checkboxListTileValue1 = newValue),
                        title: Text(
                          '???????????? ?????? (??????)',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'GmarketSans',
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                        ),
                        tileColor: Colors.white,
                        activeColor: Color(0xFF9F00FF),
                        checkColor: Colors.white,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchURL(
                          'https://sites.google.com/view/pingpong-v1-agreement/%ED%99%88');
                    },
                    child: Text(
                      '??????',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'GmarketSans',
                        color: Color(0xFF888888),
                        useGoogleFonts: false,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: CheckboxListTile(
                        value: checkboxListTileValue2 ??= false,
                        onChanged: (newValue) =>
                            setState(() => checkboxListTileValue2 = newValue),
                        title: Text(
                          '???????????? ???????????? ?????? (??????)',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'GmarketSans',
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                        ),
                        tileColor: Colors.white,
                        activeColor: Color(0xFF9F00FF),
                        checkColor: Colors.white,
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchURL(
                          'https://sites.google.com/view/pingpong-ver1/%ED%99%88');
                    },
                    child: Text(
                      '??????',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'GmarketSans',
                        color: Color(0xFF888888),
                        useGoogleFonts: false,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (!formKey.currentState.validate()) {
                            return;
                          }
                          if (checkboxListTileValue1 & checkboxListTileValue2) {
                            if (passwordTextController.text !=
                                confirmPasswordTextController.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "??????????????? ???????????? ????????????!",
                                  ),
                                ),
                              );
                              return;
                            }

                            final user = await createAccountWithEmail(
                              context,
                              emailTextController.text,
                              passwordTextController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            final usersCreateData = createUsersRecordData(
                              phoneNumber: textController2.text,
                              displayName: textController1.text,
                            );
                            await UsersRecord.collection
                                .doc(user.uid)
                                .update(usersCreateData);
                            print("*****");

                            //savePlayerId ??????
                            await actions.savePlayerId();

                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomePageWidget(),
                              ),
                              (r) => false,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "??????????????? ???????????? ??????????????? ??????????????????!",
                                ),
                              ),
                            );
                            return;
                          }

                        },
                        text: '????????????',
                        options: FFButtonOptions(
                          width: 130,
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
              ),
            ],
          ),
      ),
        ),
      ),
    );
  }
}
