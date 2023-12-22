import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componets/menu_side_bar_web/menu_side_bar_web_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edicao_pessoa_juridica_widget.dart' show EdicaoPessoaJuridicaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EdicaoPessoaJuridicaModel
    extends FlutterFlowModel<EdicaoPessoaJuridicaWidget> {
  ///  Local state fields for this page.

  IspbRecord? bancos;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menu_side_bar_web component.
  late MenuSideBarWebModel menuSideBarWebModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjController;
  String? Function(BuildContext, String?)? cnpjControllerValidator;
  // State field(s) for razaoSocial widget.
  FocusNode? razaoSocialFocusNode;
  TextEditingController? razaoSocialController;
  String? Function(BuildContext, String?)? razaoSocialControllerValidator;
  // State field(s) for nomeFantsia widget.
  FocusNode? nomeFantsiaFocusNode;
  TextEditingController? nomeFantsiaController;
  String? Function(BuildContext, String?)? nomeFantsiaControllerValidator;
  // State field(s) for ramoAtividade widget.
  String? ramoAtividadeValue;
  FormFieldController<String>? ramoAtividadeValueController;
  // State field(s) for inscricaoMunicipal widget.
  FocusNode? inscricaoMunicipalFocusNode;
  TextEditingController? inscricaoMunicipalController;
  String? Function(BuildContext, String?)?
      inscricaoMunicipalControllerValidator;
  // State field(s) for inscricaoEstadual widget.
  FocusNode? inscricaoEstadualFocusNode;
  TextEditingController? inscricaoEstadualController;
  String? Function(BuildContext, String?)? inscricaoEstadualControllerValidator;
  // State field(s) for conta widget.
  FocusNode? contaFocusNode1;
  TextEditingController? contaController1;
  String? Function(BuildContext, String?)? contaController1Validator;
  // State field(s) for naturezaJuridica widget.
  String? naturezaJuridicaValue;
  FormFieldController<String>? naturezaJuridicaValueController;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteController;
  String? Function(BuildContext, String?)? websiteControllerValidator;
  // State field(s) for CNAE widget.
  FocusNode? cnaeFocusNode;
  TextEditingController? cnaeController;
  String? Function(BuildContext, String?)? cnaeControllerValidator;
  // State field(s) for datadeAbertura widget.
  FocusNode? datadeAberturaFocusNode;
  TextEditingController? datadeAberturaController;
  final datadeAberturaMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? datadeAberturaControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  String? Function(BuildContext, String?)? cepControllerValidator;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoController;
  String? Function(BuildContext, String?)? enderecoControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  String? Function(BuildContext, String?)? numeroControllerValidator;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoController;
  String? Function(BuildContext, String?)? complementoControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroController;
  String? Function(BuildContext, String?)? bairroControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeController;
  String? Function(BuildContext, String?)? cidadeControllerValidator;
  // State field(s) for ufPf widget.
  String? ufPfValue;
  FormFieldController<String>? ufPfValueController;
  // State field(s) for telCelular widget.
  FocusNode? telCelularFocusNode;
  TextEditingController? telCelularController;
  String? Function(BuildContext, String?)? telCelularControllerValidator;
  // State field(s) for telOpcional widget.
  FocusNode? telOpcionalFocusNode;
  TextEditingController? telOpcionalController;
  String? Function(BuildContext, String?)? telOpcionalControllerValidator;
  // State field(s) for fundoCessionario widget.
  String? fundoCessionarioValue;
  FormFieldController<String>? fundoCessionarioValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for CodigoAgencia widget.
  int? codigoAgenciaValue;
  FormFieldController<int>? codigoAgenciaValueController;
  // State field(s) for bancoAgencia widget.
  String? bancoAgenciaValue;
  FormFieldController<String>? bancoAgenciaValueController;
  // State field(s) for tipoDeConta widget.
  FocusNode? tipoDeContaFocusNode;
  TextEditingController? tipoDeContaController;
  String? Function(BuildContext, String?)? tipoDeContaControllerValidator;
  // State field(s) for Agencia widget.
  FocusNode? agenciaFocusNode;
  TextEditingController? agenciaController;
  String? Function(BuildContext, String?)? agenciaControllerValidator;
  // State field(s) for Conta widget.
  FocusNode? contaFocusNode2;
  TextEditingController? contaController2;
  String? Function(BuildContext, String?)? contaController2Validator;
  // State field(s) for digitoDaConta widget.
  FocusNode? digitoDaContaFocusNode;
  TextEditingController? digitoDaContaController;
  String? Function(BuildContext, String?)? digitoDaContaControllerValidator;
  // State field(s) for chavePIX widget.
  FocusNode? chavePIXFocusNode;
  TextEditingController? chavePIXController;
  String? Function(BuildContext, String?)? chavePIXControllerValidator;
  // State field(s) for faturamentoAnual widget.
  FocusNode? faturamentoAnualFocusNode;
  TextEditingController? faturamentoAnualController;
  String? Function(BuildContext, String?)? faturamentoAnualControllerValidator;
  // State field(s) for MargemmdiadeLucroBruto widget.
  FocusNode? margemmdiadeLucroBrutoFocusNode;
  TextEditingController? margemmdiadeLucroBrutoController;
  String? Function(BuildContext, String?)?
      margemmdiadeLucroBrutoControllerValidator;
  // State field(s) for Capitalsocialinicial widget.
  FocusNode? capitalsocialinicialFocusNode;
  TextEditingController? capitalsocialinicialController;
  String? Function(BuildContext, String?)?
      capitalsocialinicialControllerValidator;
  // State field(s) for PatrimnioLquido widget.
  FocusNode? patrimnioLquidoFocusNode;
  TextEditingController? patrimnioLquidoController;
  String? Function(BuildContext, String?)? patrimnioLquidoControllerValidator;
  // State field(s) for FaturamentoMedioMensal widget.
  FocusNode? faturamentoMedioMensalFocusNode;
  TextEditingController? faturamentoMedioMensalController;
  String? Function(BuildContext, String?)?
      faturamentoMedioMensalControllerValidator;
  // State field(s) for ValorAlugadoFinanciado widget.
  FocusNode? valorAlugadoFinanciadoFocusNode;
  TextEditingController? valorAlugadoFinanciadoController;
  String? Function(BuildContext, String?)?
      valorAlugadoFinanciadoControllerValidator;
  // State field(s) for Exportaoem widget.
  FocusNode? exportaoemFocusNode;
  TextEditingController? exportaoemController;
  String? Function(BuildContext, String?)? exportaoemControllerValidator;
  // State field(s) for CustoComFornecedores widget.
  FocusNode? custoComFornecedoresFocusNode;
  TextEditingController? custoComFornecedoresController;
  String? Function(BuildContext, String?)?
      custoComFornecedoresControllerValidator;
  // State field(s) for NumeroDeFuncionrios widget.
  FocusNode? numeroDeFuncionriosFocusNode;
  TextEditingController? numeroDeFuncionriosController;
  String? Function(BuildContext, String?)?
      numeroDeFuncionriosControllerValidator;
  // State field(s) for ValordaFolhaDePagamento widget.
  FocusNode? valordaFolhaDePagamentoFocusNode;
  TextEditingController? valordaFolhaDePagamentoController;
  String? Function(BuildContext, String?)?
      valordaFolhaDePagamentoControllerValidator;
  // State field(s) for valorGastoComImposto widget.
  FocusNode? valorGastoComImpostoFocusNode;
  TextEditingController? valorGastoComImpostoController;
  String? Function(BuildContext, String?)?
      valorGastoComImpostoControllerValidator;
  // State field(s) for localSede widget.
  String? localSedeValue;
  FormFieldController<String>? localSedeValueController;
  // State field(s) for PMV widget.
  FocusNode? pmvFocusNode;
  TextEditingController? pmvController;
  String? Function(BuildContext, String?)? pmvControllerValidator;
  // State field(s) for potencialFomentavel widget.
  FocusNode? potencialFomentavelFocusNode;
  TextEditingController? potencialFomentavelController;
  String? Function(BuildContext, String?)?
      potencialFomentavelControllerValidator;
  // State field(s) for custoDaEmissao widget.
  FocusNode? custoDaEmissaoFocusNode;
  TextEditingController? custoDaEmissaoController;
  String? Function(BuildContext, String?)? custoDaEmissaoControllerValidator;
  // State field(s) for valorMinimo widget.
  FocusNode? valorMinimoFocusNode;
  TextEditingController? valorMinimoController;
  String? Function(BuildContext, String?)? valorMinimoControllerValidator;
  // State field(s) for porcentagem widget.
  FocusNode? porcentagemFocusNode;
  TextEditingController? porcentagemController;
  String? Function(BuildContext, String?)? porcentagemControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController42;
  String? Function(BuildContext, String?)? textController42Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController43;
  String? Function(BuildContext, String?)? textController43Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController44;
  String? Function(BuildContext, String?)? textController44Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuSideBarWebModel = createModel(context, () => MenuSideBarWebModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuSideBarWebModel.dispose();
    tabBarController?.dispose();
    cnpjFocusNode?.dispose();
    cnpjController?.dispose();

    razaoSocialFocusNode?.dispose();
    razaoSocialController?.dispose();

    nomeFantsiaFocusNode?.dispose();
    nomeFantsiaController?.dispose();

    inscricaoMunicipalFocusNode?.dispose();
    inscricaoMunicipalController?.dispose();

    inscricaoEstadualFocusNode?.dispose();
    inscricaoEstadualController?.dispose();

    contaFocusNode1?.dispose();
    contaController1?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    websiteFocusNode?.dispose();
    websiteController?.dispose();

    cnaeFocusNode?.dispose();
    cnaeController?.dispose();

    datadeAberturaFocusNode?.dispose();
    datadeAberturaController?.dispose();

    cepFocusNode?.dispose();
    cepController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoController?.dispose();

    numeroFocusNode?.dispose();
    numeroController?.dispose();

    complementoFocusNode?.dispose();
    complementoController?.dispose();

    bairroFocusNode?.dispose();
    bairroController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeController?.dispose();

    telCelularFocusNode?.dispose();
    telCelularController?.dispose();

    telOpcionalFocusNode?.dispose();
    telOpcionalController?.dispose();

    textFieldFocusNode1?.dispose();
    textController19?.dispose();

    textFieldFocusNode2?.dispose();
    textController20?.dispose();

    tipoDeContaFocusNode?.dispose();
    tipoDeContaController?.dispose();

    agenciaFocusNode?.dispose();
    agenciaController?.dispose();

    contaFocusNode2?.dispose();
    contaController2?.dispose();

    digitoDaContaFocusNode?.dispose();
    digitoDaContaController?.dispose();

    chavePIXFocusNode?.dispose();
    chavePIXController?.dispose();

    faturamentoAnualFocusNode?.dispose();
    faturamentoAnualController?.dispose();

    margemmdiadeLucroBrutoFocusNode?.dispose();
    margemmdiadeLucroBrutoController?.dispose();

    capitalsocialinicialFocusNode?.dispose();
    capitalsocialinicialController?.dispose();

    patrimnioLquidoFocusNode?.dispose();
    patrimnioLquidoController?.dispose();

    faturamentoMedioMensalFocusNode?.dispose();
    faturamentoMedioMensalController?.dispose();

    valorAlugadoFinanciadoFocusNode?.dispose();
    valorAlugadoFinanciadoController?.dispose();

    exportaoemFocusNode?.dispose();
    exportaoemController?.dispose();

    custoComFornecedoresFocusNode?.dispose();
    custoComFornecedoresController?.dispose();

    numeroDeFuncionriosFocusNode?.dispose();
    numeroDeFuncionriosController?.dispose();

    valordaFolhaDePagamentoFocusNode?.dispose();
    valordaFolhaDePagamentoController?.dispose();

    valorGastoComImpostoFocusNode?.dispose();
    valorGastoComImpostoController?.dispose();

    pmvFocusNode?.dispose();
    pmvController?.dispose();

    potencialFomentavelFocusNode?.dispose();
    potencialFomentavelController?.dispose();

    custoDaEmissaoFocusNode?.dispose();
    custoDaEmissaoController?.dispose();

    valorMinimoFocusNode?.dispose();
    valorMinimoController?.dispose();

    porcentagemFocusNode?.dispose();
    porcentagemController?.dispose();

    textFieldFocusNode3?.dispose();
    textController42?.dispose();

    textFieldFocusNode4?.dispose();
    textController43?.dispose();

    textFieldFocusNode5?.dispose();
    textController44?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
