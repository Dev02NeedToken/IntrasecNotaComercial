import '/auth/firebase_auth/auth_util.dart';
import '/componets/menu_side_bar_web/menu_side_bar_web_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'tela20_contadigital_novo_operador_widget.dart'
    show Tela20ContadigitalNovoOperadorWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class Tela20ContadigitalNovoOperadorModel
    extends FlutterFlowModel<Tela20ContadigitalNovoOperadorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menu_side_bar_web component.
  late MenuSideBarWebModel menuSideBarWebModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telefoneControllerValidator;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoController;
  String? Function(BuildContext, String?)? enderecoControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  // State field(s) for confirmar widget.
  FocusNode? confirmarFocusNode;
  TextEditingController? confirmarController;
  late bool confirmarVisibility;
  String? Function(BuildContext, String?)? confirmarControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuSideBarWebModel = createModel(context, () => MenuSideBarWebModel());
    senhaVisibility = false;
    confirmarVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    menuSideBarWebModel.dispose();
    tabBarController?.dispose();
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoController?.dispose();

    senhaFocusNode?.dispose();
    senhaController?.dispose();

    confirmarFocusNode?.dispose();
    confirmarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
