import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'signup_page_widget.dart' show SignupPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class SignupPageModel extends FlutterFlowModel<SignupPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AdSoyadTextField widget.
  FocusNode? adSoyadTextFieldFocusNode;
  TextEditingController? adSoyadTextFieldTextController;
  String? Function(BuildContext, String?)?
      adSoyadTextFieldTextControllerValidator;
  // State field(s) for MailTextField widget.
  FocusNode? mailTextFieldFocusNode;
  TextEditingController? mailTextFieldTextController;
  String? Function(BuildContext, String?)? mailTextFieldTextControllerValidator;
  // State field(s) for DogumTarihiTextField widget.
  FocusNode? dogumTarihiTextFieldFocusNode;
  TextEditingController? dogumTarihiTextFieldTextController;
  final dogumTarihiTextFieldMask = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)?
      dogumTarihiTextFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for SifreTextField widget.
  FocusNode? sifreTextFieldFocusNode;
  TextEditingController? sifreTextFieldTextController;
  late bool sifreTextFieldVisibility;
  String? Function(BuildContext, String?)?
      sifreTextFieldTextControllerValidator;
  // State field(s) for SifreTekrarTextField widget.
  FocusNode? sifreTekrarTextFieldFocusNode;
  TextEditingController? sifreTekrarTextFieldTextController;
  late bool sifreTekrarTextFieldVisibility;
  String? Function(BuildContext, String?)?
      sifreTekrarTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sifreTextFieldVisibility = false;
    sifreTekrarTextFieldVisibility = false;
  }

  @override
  void dispose() {
    adSoyadTextFieldFocusNode?.dispose();
    adSoyadTextFieldTextController?.dispose();

    mailTextFieldFocusNode?.dispose();
    mailTextFieldTextController?.dispose();

    dogumTarihiTextFieldFocusNode?.dispose();
    dogumTarihiTextFieldTextController?.dispose();

    sifreTextFieldFocusNode?.dispose();
    sifreTextFieldTextController?.dispose();

    sifreTekrarTextFieldFocusNode?.dispose();
    sifreTekrarTextFieldTextController?.dispose();
  }
}
