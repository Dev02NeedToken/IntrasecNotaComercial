import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'envolvidos_pg_op_widget.dart' show EnvolvidosPgOpWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnvolvidosPgOpModel extends FlutterFlowModel<EnvolvidosPgOpWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for envolvido widget.
  String? envolvidoValue;
  FormFieldController<String>? envolvidoValueController;
  // State field(s) for relacionada widget.
  String? relacionadaValue;
  FormFieldController<String>? relacionadaValueController;
  // State field(s) for tipoDeRelacao widget.
  String? tipoDeRelacaoValue;
  FormFieldController<String>? tipoDeRelacaoValueController;
  // State field(s) for formaDeEnvio widget.
  String? formaDeEnvioValue;
  FormFieldController<String>? formaDeEnvioValueController;
  // State field(s) for formaDeValidacao widget.
  String? formaDeValidacaoValue;
  FormFieldController<String>? formaDeValidacaoValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
