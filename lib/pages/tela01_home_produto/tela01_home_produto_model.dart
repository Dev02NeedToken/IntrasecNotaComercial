import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componets/menu_side_bar_web/menu_side_bar_web_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tela01_home_produto_widget.dart' show Tela01HomeProdutoWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Tela01HomeProdutoModel extends FlutterFlowModel<Tela01HomeProdutoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menu_side_bar_web component.
  late MenuSideBarWebModel menuSideBarWebModel;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue1;
  FormFieldController<List<String>>? choiceChipsValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue2;
  FormFieldController<List<String>>? choiceChipsValueController2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuSideBarWebModel = createModel(context, () => MenuSideBarWebModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuSideBarWebModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
