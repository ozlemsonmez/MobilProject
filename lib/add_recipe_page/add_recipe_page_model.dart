import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/tebrik_popup_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'add_recipe_page_widget.dart' show AddRecipePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddRecipePageModel extends FlutterFlowModel<AddRecipePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldTextController;
  String? Function(BuildContext, String?)? nameTextFieldTextControllerValidator;
  String? _nameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Tarif Adı girmelisiniz';
    }

    return null;
  }

  // State field(s) for CategoryTextField widget.
  FocusNode? categoryTextFieldFocusNode;
  TextEditingController? categoryTextFieldTextController;
  String? Function(BuildContext, String?)?
      categoryTextFieldTextControllerValidator;
  String? _categoryTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Kategori girmelisiniz.';
    }

    return null;
  }

  // State field(s) for IngredientsTextField widget.
  FocusNode? ingredientsTextFieldFocusNode;
  TextEditingController? ingredientsTextFieldTextController;
  String? Function(BuildContext, String?)?
      ingredientsTextFieldTextControllerValidator;
  String? _ingredientsTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Malzemeleri girmelisiniz.';
    }

    return null;
  }

  // State field(s) for InstructionsTextField widget.
  FocusNode? instructionsTextFieldFocusNode;
  TextEditingController? instructionsTextFieldTextController;
  String? Function(BuildContext, String?)?
      instructionsTextFieldTextControllerValidator;
  String? _instructionsTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Hazırlanışı girmelisiniz.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (addRecipes)] action in Button widget.
  ApiCallResponse? apiResultt1u;

  @override
  void initState(BuildContext context) {
    nameTextFieldTextControllerValidator =
        _nameTextFieldTextControllerValidator;
    categoryTextFieldTextControllerValidator =
        _categoryTextFieldTextControllerValidator;
    ingredientsTextFieldTextControllerValidator =
        _ingredientsTextFieldTextControllerValidator;
    instructionsTextFieldTextControllerValidator =
        _instructionsTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    nameTextFieldFocusNode?.dispose();
    nameTextFieldTextController?.dispose();

    categoryTextFieldFocusNode?.dispose();
    categoryTextFieldTextController?.dispose();

    ingredientsTextFieldFocusNode?.dispose();
    ingredientsTextFieldTextController?.dispose();

    instructionsTextFieldFocusNode?.dispose();
    instructionsTextFieldTextController?.dispose();
  }
}
