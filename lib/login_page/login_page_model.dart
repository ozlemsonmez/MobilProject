import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MailTextField widget.
  FocusNode? mailTextFieldFocusNode;
  TextEditingController? mailTextFieldTextController;
  String? Function(BuildContext, String?)? mailTextFieldTextControllerValidator;
  // State field(s) for SifreTextField widget.
  FocusNode? sifreTextFieldFocusNode;
  TextEditingController? sifreTextFieldTextController;
  late bool sifreTextFieldVisibility;
  String? Function(BuildContext, String?)?
      sifreTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sifreTextFieldVisibility = false;
  }

  @override
  void dispose() {
    mailTextFieldFocusNode?.dispose();
    mailTextFieldTextController?.dispose();

    sifreTextFieldFocusNode?.dispose();
    sifreTextFieldTextController?.dispose();
  }
}
