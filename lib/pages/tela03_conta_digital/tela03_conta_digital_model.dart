import '/auth/firebase_auth/auth_util.dart';
import '/componets/menu_side_bar_fechado/menu_side_bar_fechado_widget.dart';
import '/componets/menu_side_bar_web/menu_side_bar_web_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'tela03_conta_digital_widget.dart' show Tela03ContaDigitalWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Tela03ContaDigitalModel
    extends FlutterFlowModel<Tela03ContaDigitalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menu_side_bar_fechado component.
  late MenuSideBarFechadoModel menuSideBarFechadoModel;
  // Model for menu_side_bar_web component.
  late MenuSideBarWebModel menuSideBarWebModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuSideBarFechadoModel =
        createModel(context, () => MenuSideBarFechadoModel());
    menuSideBarWebModel = createModel(context, () => MenuSideBarWebModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuSideBarFechadoModel.dispose();
    menuSideBarWebModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
