import '/auth/firebase_auth/auth_util.dart';
import '/componets/menu_side_bar_web/menu_side_bar_web_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tela13_simulacao_widget.dart' show Tela13SimulacaoWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class Tela13SimulacaoModel extends FlutterFlowModel<Tela13SimulacaoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menu_side_bar_web component.
  late MenuSideBarWebModel menuSideBarWebModel;
  // State field(s) for produto widget.
  String? produtoValue;
  FormFieldController<String>? produtoValueController;
  // State field(s) for tipodePessoa widget.
  String? tipodePessoaValue;
  FormFieldController<String>? tipodePessoaValueController;
  // State field(s) for valorSolicitado widget.
  FocusNode? valorSolicitadoFocusNode;
  TextEditingController? valorSolicitadoController;
  String? Function(BuildContext, String?)? valorSolicitadoControllerValidator;
  // State field(s) for taxadeJuros widget.
  FocusNode? taxadeJurosFocusNode;
  TextEditingController? taxadeJurosController;
  String? Function(BuildContext, String?)? taxadeJurosControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for tipodeCalculo widget.
  String? tipodeCalculoValue;
  FormFieldController<String>? tipodeCalculoValueController;
  // State field(s) for periodicidadeJuros widget.
  String? periodicidadeJurosValue;
  FormFieldController<String>? periodicidadeJurosValueController;
  // State field(s) for carenciaAmortizacao widget.
  FocusNode? carenciaAmortizacaoFocusNode;
  TextEditingController? carenciaAmortizacaoController;
  String? Function(BuildContext, String?)?
      carenciaAmortizacaoControllerValidator;
  // State field(s) for carenciaJuros widget.
  FocusNode? carenciaJurosFocusNode;
  TextEditingController? carenciaJurosController;
  String? Function(BuildContext, String?)? carenciaJurosControllerValidator;
  // State field(s) for baseCalculo widget.
  String? baseCalculoValue;
  FormFieldController<String>? baseCalculoValueController;
  // State field(s) for diaVencimento widget.
  FocusNode? diaVencimentoFocusNode;
  TextEditingController? diaVencimentoController;
  String? Function(BuildContext, String?)? diaVencimentoControllerValidator;
  // State field(s) for dataInicio widget.
  FocusNode? dataInicioFocusNode;
  TextEditingController? dataInicioController;
  final dataInicioMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataInicioControllerValidator;
  // State field(s) for corban widget.
  FocusNode? corbanFocusNode;
  TextEditingController? corbanController;
  String? Function(BuildContext, String?)? corbanControllerValidator;
  // State field(s) for indexadorPosFixado widget.
  String? indexadorPosFixadoValue;
  FormFieldController<String>? indexadorPosFixadoValueController;
  // State field(s) for percentualIndexador widget.
  FocusNode? percentualIndexadorFocusNode;
  TextEditingController? percentualIndexadorController;
  String? Function(BuildContext, String?)?
      percentualIndexadorControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuSideBarWebModel = createModel(context, () => MenuSideBarWebModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuSideBarWebModel.dispose();
    valorSolicitadoFocusNode?.dispose();
    valorSolicitadoController?.dispose();

    taxadeJurosFocusNode?.dispose();
    taxadeJurosController?.dispose();

    carenciaAmortizacaoFocusNode?.dispose();
    carenciaAmortizacaoController?.dispose();

    carenciaJurosFocusNode?.dispose();
    carenciaJurosController?.dispose();

    diaVencimentoFocusNode?.dispose();
    diaVencimentoController?.dispose();

    dataInicioFocusNode?.dispose();
    dataInicioController?.dispose();

    corbanFocusNode?.dispose();
    corbanController?.dispose();

    percentualIndexadorFocusNode?.dispose();
    percentualIndexadorController?.dispose();

    textFieldFocusNode?.dispose();
    textController9?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
