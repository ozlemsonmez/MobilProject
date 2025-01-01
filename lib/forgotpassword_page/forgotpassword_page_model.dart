import '/auth/firebase_auth/auth_util.dart';
import '/components/allertpopup_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'forgotpassword_page_widget.dart' show ForgotpasswordPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotpasswordPageModel
    extends FlutterFlowModel<ForgotpasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MailTextField widget.
  FocusNode? mailTextFieldFocusNode;
  TextEditingController? mailTextFieldTextController;
  String? Function(BuildContext, String?)? mailTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mailTextFieldFocusNode?.dispose();
    mailTextFieldTextController?.dispose();
  }
}
