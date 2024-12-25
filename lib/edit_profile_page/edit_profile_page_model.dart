import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'edit_profile_page_widget.dart' show EditProfilePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfilePageModel extends FlutterFlowModel<EditProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for AdSoyadTextField widget.
  FocusNode? adSoyadTextFieldFocusNode;
  TextEditingController? adSoyadTextFieldTextController;
  String? Function(BuildContext, String?)?
      adSoyadTextFieldTextControllerValidator;
  // State field(s) for DogumTarihiTextField widget.
  FocusNode? dogumTarihiTextFieldFocusNode;
  TextEditingController? dogumTarihiTextFieldTextController;
  String? Function(BuildContext, String?)?
      dogumTarihiTextFieldTextControllerValidator;
  // State field(s) for CinsiyetDropDown widget.
  String? cinsiyetDropDownValue;
  FormFieldController<String>? cinsiyetDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    adSoyadTextFieldFocusNode?.dispose();
    adSoyadTextFieldTextController?.dispose();

    dogumTarihiTextFieldFocusNode?.dispose();
    dogumTarihiTextFieldTextController?.dispose();
  }
}
