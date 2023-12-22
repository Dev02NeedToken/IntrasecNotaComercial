import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/componets/documento_operacao/documento_operacao_widget.dart';
import '/componets/envolvidos_pg_op/envolvidos_pg_op_widget.dart';
import '/componets/menu_side_bar_web/menu_side_bar_web_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'tela08091011_operacao_widget.dart' show Tela08091011OperacaoWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Tela08091011OperacaoModel
    extends FlutterFlowModel<Tela08091011OperacaoWidget> {
  ///  Local state fields for this page.

  List<UsercadastroPessoaJuridicaRecord> listaFundoCessionario = [];
  void addToListaFundoCessionario(UsercadastroPessoaJuridicaRecord item) =>
      listaFundoCessionario.add(item);
  void removeFromListaFundoCessionario(UsercadastroPessoaJuridicaRecord item) =>
      listaFundoCessionario.remove(item);
  void removeAtIndexFromListaFundoCessionario(int index) =>
      listaFundoCessionario.removeAt(index);
  void insertAtIndexInListaFundoCessionario(
          int index, UsercadastroPessoaJuridicaRecord item) =>
      listaFundoCessionario.insert(index, item);
  void updateListaFundoCessionarioAtIndex(
          int index, Function(UsercadastroPessoaJuridicaRecord) updateFn) =>
      listaFundoCessionario[index] = updateFn(listaFundoCessionario[index]);

  List<UsercadastroPessoaJuridicaRecord> agenciaBancaria = [];
  void addToAgenciaBancaria(UsercadastroPessoaJuridicaRecord item) =>
      agenciaBancaria.add(item);
  void removeFromAgenciaBancaria(UsercadastroPessoaJuridicaRecord item) =>
      agenciaBancaria.remove(item);
  void removeAtIndexFromAgenciaBancaria(int index) =>
      agenciaBancaria.removeAt(index);
  void insertAtIndexInAgenciaBancaria(
          int index, UsercadastroPessoaJuridicaRecord item) =>
      agenciaBancaria.insert(index, item);
  void updateAgenciaBancariaAtIndex(
          int index, Function(UsercadastroPessoaJuridicaRecord) updateFn) =>
      agenciaBancaria[index] = updateFn(agenciaBancaria[index]);

  List<UsercadastroPessoaJuridicaRecord> contaBancaria = [];
  void addToContaBancaria(UsercadastroPessoaJuridicaRecord item) =>
      contaBancaria.add(item);
  void removeFromContaBancaria(UsercadastroPessoaJuridicaRecord item) =>
      contaBancaria.remove(item);
  void removeAtIndexFromContaBancaria(int index) =>
      contaBancaria.removeAt(index);
  void insertAtIndexInContaBancaria(
          int index, UsercadastroPessoaJuridicaRecord item) =>
      contaBancaria.insert(index, item);
  void updateContaBancariaAtIndex(
          int index, Function(UsercadastroPessoaJuridicaRecord) updateFn) =>
      contaBancaria[index] = updateFn(contaBancaria[index]);

  List<UsercadastroPessoaJuridicaRecord> digitoDaConta = [];
  void addToDigitoDaConta(UsercadastroPessoaJuridicaRecord item) =>
      digitoDaConta.add(item);
  void removeFromDigitoDaConta(UsercadastroPessoaJuridicaRecord item) =>
      digitoDaConta.remove(item);
  void removeAtIndexFromDigitoDaConta(int index) =>
      digitoDaConta.removeAt(index);
  void insertAtIndexInDigitoDaConta(
          int index, UsercadastroPessoaJuridicaRecord item) =>
      digitoDaConta.insert(index, item);
  void updateDigitoDaContaAtIndex(
          int index, Function(UsercadastroPessoaJuridicaRecord) updateFn) =>
      digitoDaConta[index] = updateFn(digitoDaConta[index]);

  UsercadastroPessoaJuridicaRecord? docPessoaJuridicaComp;

  String tomador = '';

  String investidor = '';

  String? sessionExpiresIn = '';

  String? sessionId = '';

  double? valorSolicitado;

  DocumentReference? valorMinimo;

  DocumentReference? acordoDoComercial;

  String fundoCessionario = 'Fundo Cessionario';

  String agencia = 'Agência';

  String contaCorrente = 'Conta';

  String digitoConta = 'Digito da conta';

  double num1 = 0.0;

  double? num2 = 0.0;

  double respostaMult = 1.0;

  double valorMin = 1.0;

  double respostaSoma = 1.0;

  double? listPagamento;

  double? listJuros;

  double? listAmortizacao;

  double? listSaldoDevedor;

  double? listVencimento;

  double? listParcela;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menu_side_bar_web component.
  late MenuSideBarWebModel menuSideBarWebModel;
  // Stores action output result for [Firestore Query - Query a collection] action in simulacao widget.
  UsercadastroPessoaJuridicaRecord? retornoInformacoes;
  // Stores action output result for [Firestore Query - Query a collection] action in simulacao widget.
  UsercadastroPessoaJuridicaRecord? retornoInvestido;
  // Stores action output result for [Firestore Query - Query a collection] action in simulacao widget.
  UsercadastroPessoaJuridicaRecord? retornoCustodiante;
  // Stores action output result for [Backend Call - API (ApiSimulacaoOperacao)] action in simulacao widget.
  ApiCallResponse? apiRestSimul;
  // Stores action output result for [Backend Call - API (CreateDocumentByHtml)] action in simulacao widget.
  ApiCallResponse? restCreateDoc;
  // Stores action output result for [Backend Call - API (SendMailSignDocument)] action in simulacao widget.
  ApiCallResponse? restFileHash;
  // Stores action output result for [Backend Call - API (retornoDoc)] action in simulacao widget.
  ApiCallResponse? respRetornoDoc;
  // Stores action output result for [Backend Call - Create Document] action in simulacao widget.
  RespDocAssinaturaRecord? tsetdowloandDoc;
  // Stores action output result for [Backend Call - API (Gsheet get)] action in recuperarSimulacao widget.
  ApiCallResponse? sheetResp;
  // Stores action output result for [Backend Call - API (tokengoogle refresh)] action in recuperarSimulacao widget.
  ApiCallResponse? googleTokenRest;
  // Stores action output result for [Backend Call - API (Gsheet get)] action in recuperarSimulacao widget.
  ApiCallResponse? respGetGoogle;
  // Stores action output result for [Backend Call - API (CreateDocumentByHtml)] action in recuperarSimulacao widget.
  ApiCallResponse? restCreateDocTest;
  // Stores action output result for [Backend Call - API (SendMailSignDocument)] action in recuperarSimulacao widget.
  ApiCallResponse? restFileHashTest;
  // Stores action output result for [Backend Call - API (retornoDoc)] action in recuperarSimulacao widget.
  ApiCallResponse? apiResult75nTest;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for produto widget.
  String? produtoValue;
  FormFieldController<String>? produtoValueController;
  // State field(s) for tomador widget.
  String? tomadorValue;
  FormFieldController<String>? tomadorValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in tomador widget.
  List<UsercadastroPessoaJuridicaRecord>? outConsultaFundo0;
  // State field(s) for investidor widget.
  String? investidorValue;
  FormFieldController<String>? investidorValueController;
  // State field(s) for tipoLiquidacao widget.
  String? tipoLiquidacaoValue;
  FormFieldController<String>? tipoLiquidacaoValueController;
  // State field(s) for custodiante widget.
  String? custodianteValue;
  FormFieldController<String>? custodianteValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for valorNominalUnitario widget.
  FocusNode? valorNominalUnitarioFocusNode;
  TextEditingController? valorNominalUnitarioController;
  String? Function(BuildContext, String?)?
      valorNominalUnitarioControllerValidator;
  // State field(s) for valorDosJurosRemunetorios widget.
  FocusNode? valorDosJurosRemunetoriosFocusNode;
  TextEditingController? valorDosJurosRemunetoriosController;
  String? Function(BuildContext, String?)?
      valorDosJurosRemunetoriosControllerValidator;
  // State field(s) for duracao widget.
  FocusNode? duracaoFocusNode;
  TextEditingController? duracaoController;
  String? Function(BuildContext, String?)? duracaoControllerValidator;
  // State field(s) for corban widget.
  FocusNode? corbanFocusNode;
  TextEditingController? corbanController;
  String? Function(BuildContext, String?)? corbanControllerValidator;
  // State field(s) for jurosPeriodicidade widget.
  String? jurosPeriodicidadeValue;
  FormFieldController<String>? jurosPeriodicidadeValueController;
  DateTime? datePicked1;
  // State field(s) for carenciaJuros widget.
  FocusNode? carenciaJurosFocusNode;
  TextEditingController? carenciaJurosController;
  String? Function(BuildContext, String?)? carenciaJurosControllerValidator;
  // State field(s) for convencao widget.
  String? convencaoValue;
  FormFieldController<String>? convencaoValueController;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for indexadorPosFixado widget.
  String? indexadorPosFixadoValue;
  FormFieldController<String>? indexadorPosFixadoValueController;
  // State field(s) for percentualIndexador widget.
  FocusNode? percentualIndexadorFocusNode;
  TextEditingController? percentualIndexadorController;
  String? Function(BuildContext, String?)?
      percentualIndexadorControllerValidator;
  // State field(s) for valorMinimo widget.
  FocusNode? valorMinimoFocusNode;
  TextEditingController? valorMinimoController;
  String? Function(BuildContext, String?)? valorMinimoControllerValidator;
  // State field(s) for porcentagem widget.
  FocusNode? porcentagemFocusNode;
  TextEditingController? porcentagemController;
  String? Function(BuildContext, String?)? porcentagemControllerValidator;
  // Stores action output result for [Custom Action - valorSolicitadomaiscustoEmissao] action in mult widget.
  double? somaRespost;
  // Stores action output result for [Custom Action - valorSolicitadoXtaxaEscriturado] action in mult widget.
  double? mult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuSideBarWebModel = createModel(context, () => MenuSideBarWebModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuSideBarWebModel.dispose();
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    valorNominalUnitarioFocusNode?.dispose();
    valorNominalUnitarioController?.dispose();

    valorDosJurosRemunetoriosFocusNode?.dispose();
    valorDosJurosRemunetoriosController?.dispose();

    duracaoFocusNode?.dispose();
    duracaoController?.dispose();

    corbanFocusNode?.dispose();
    corbanController?.dispose();

    carenciaJurosFocusNode?.dispose();
    carenciaJurosController?.dispose();

    percentualIndexadorFocusNode?.dispose();
    percentualIndexadorController?.dispose();

    valorMinimoFocusNode?.dispose();
    valorMinimoController?.dispose();

    porcentagemFocusNode?.dispose();
    porcentagemController?.dispose();

    textFieldFocusNode2?.dispose();
    textController10?.dispose();

    textFieldFocusNode3?.dispose();
    textController11?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
