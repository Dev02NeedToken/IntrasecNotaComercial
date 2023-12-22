import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/componets/add_informacoes_cadastro_p_j/add_informacoes_cadastro_p_j_widget.dart';
import '/componets/documento_juridico/documento_juridico_widget.dart';
import '/componets/menu_side_bar_web/menu_side_bar_web_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tela19_pessoa_juridica_novo_cadastro_widget.dart'
    show Tela19PessoaJuridicaNovoCadastroWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class Tela19PessoaJuridicaNovoCadastroModel
    extends FlutterFlowModel<Tela19PessoaJuridicaNovoCadastroWidget> {
  ///  Local state fields for this page.

  String varEndereco = ' Endereço';

  String varCidade = ' Cidade';

  String varBairro = ' Bairro';

  String varUF = ' UF';

  String codigoBancario = 'Código Bancario';

  String ipbs = 'IPBS';

  String informacaoAdd = 'Adicionar';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for menu_side_bar_web component.
  late MenuSideBarWebModel menuSideBarWebModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjController;
  final cnpjMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? cnpjControllerValidator;
  String? _cnpjControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (val.length > 20) {
      return 'CNPJ Incorreto';
    }

    return null;
  }

  // State field(s) for razaoSocial widget.
  FocusNode? razaoSocialFocusNode;
  TextEditingController? razaoSocialController;
  String? Function(BuildContext, String?)? razaoSocialControllerValidator;
  // State field(s) for nomeFantsia widget.
  FocusNode? nomeFantsiaFocusNode;
  TextEditingController? nomeFantsiaController;
  String? Function(BuildContext, String?)? nomeFantsiaControllerValidator;
  // State field(s) for naturezaJuridica widget.
  String? naturezaJuridicaValue;
  FormFieldController<String>? naturezaJuridicaValueController;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email obrigatório';
    }
    return null;
  }

  // State field(s) for datadeAbertura widget.
  FocusNode? datadeAberturaFocusNode;
  TextEditingController? datadeAberturaController;
  final datadeAberturaMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? datadeAberturaControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  String? _cepControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 10) {
      return 'Cep incorreto';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (apiBuscarCEP)] action in cep widget.
  ApiCallResponse? outApiBuscarCEP;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  String? Function(BuildContext, String?)? numeroControllerValidator;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoController;
  String? Function(BuildContext, String?)? complementoControllerValidator;
  // State field(s) for telCelular widget.
  FocusNode? telCelularFocusNode;
  TextEditingController? telCelularController;
  final telCelularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telCelularControllerValidator;
  // State field(s) for telOpcional widget.
  FocusNode? telOpcionalFocusNode;
  TextEditingController? telOpcionalController;
  final telOpcionalMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telOpcionalControllerValidator;
  // State field(s) for fundoCessionario widget.
  String? fundoCessionarioValue;
  FormFieldController<String>? fundoCessionarioValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for nomeResponsavelLegal widget.
  FocusNode? nomeResponsavelLegalFocusNode;
  TextEditingController? nomeResponsavelLegalController;
  String? Function(BuildContext, String?)?
      nomeResponsavelLegalControllerValidator;
  // State field(s) for emailResponsavelLegal widget.
  FocusNode? emailResponsavelLegalFocusNode;
  TextEditingController? emailResponsavelLegalController;
  String? Function(BuildContext, String?)?
      emailResponsavelLegalControllerValidator;
  // State field(s) for cpfouCnpjResponsavelLegal widget.
  FocusNode? cpfouCnpjResponsavelLegalFocusNode;
  TextEditingController? cpfouCnpjResponsavelLegalController;
  String? Function(BuildContext, String?)?
      cpfouCnpjResponsavelLegalControllerValidator;
  // State field(s) for telefoneResponsavelLegal widget.
  FocusNode? telefoneResponsavelLegalFocusNode;
  TextEditingController? telefoneResponsavelLegalController;
  final telefoneResponsavelLegalMask =
      MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      telefoneResponsavelLegalControllerValidator;
  // State field(s) for bancoAgencia widget.
  String? bancoAgenciaValue;
  FormFieldController<String>? bancoAgenciaValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in bancoAgencia widget.
  IspbRecord? outISPB;
  // State field(s) for tipoDeConta widget.
  String? tipoDeContaValue;
  FormFieldController<String>? tipoDeContaValueController;
  // State field(s) for Agencia widget.
  FocusNode? agenciaFocusNode;
  TextEditingController? agenciaController;
  String? Function(BuildContext, String?)? agenciaControllerValidator;
  // State field(s) for Conta widget.
  FocusNode? contaFocusNode;
  TextEditingController? contaController;
  String? Function(BuildContext, String?)? contaControllerValidator;
  // State field(s) for digitoDaConta widget.
  FocusNode? digitoDaContaFocusNode;
  TextEditingController? digitoDaContaController;
  String? Function(BuildContext, String?)? digitoDaContaControllerValidator;
  // State field(s) for chavePIX widget.
  FocusNode? chavePIXFocusNode;
  TextEditingController? chavePIXController;
  String? Function(BuildContext, String?)? chavePIXControllerValidator;
  // State field(s) for FaturamentoAnual widget.
  FocusNode? faturamentoAnualFocusNode;
  TextEditingController? faturamentoAnualController;
  String? Function(BuildContext, String?)? faturamentoAnualControllerValidator;
  // State field(s) for CapitalSocialInicial widget.
  FocusNode? capitalSocialInicialFocusNode;
  TextEditingController? capitalSocialInicialController;
  String? Function(BuildContext, String?)?
      capitalSocialInicialControllerValidator;
  // State field(s) for PatrimonioLiquido widget.
  FocusNode? patrimonioLiquidoFocusNode;
  TextEditingController? patrimonioLiquidoController;
  String? Function(BuildContext, String?)? patrimonioLiquidoControllerValidator;
  // State field(s) for localSede widget.
  String? localSedeValue;
  FormFieldController<String>? localSedeValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UsercadastroPessoaJuridicaRecord? cadastroUser;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuSideBarWebModel = createModel(context, () => MenuSideBarWebModel());
    cnpjControllerValidator = _cnpjControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    cepControllerValidator = _cepControllerValidator;
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

    emailFocusNode?.dispose();
    emailController?.dispose();

    datadeAberturaFocusNode?.dispose();
    datadeAberturaController?.dispose();

    cepFocusNode?.dispose();
    cepController?.dispose();

    numeroFocusNode?.dispose();
    numeroController?.dispose();

    complementoFocusNode?.dispose();
    complementoController?.dispose();

    telCelularFocusNode?.dispose();
    telCelularController?.dispose();

    telOpcionalFocusNode?.dispose();
    telOpcionalController?.dispose();

    textFieldFocusNode1?.dispose();
    textController11?.dispose();

    textFieldFocusNode2?.dispose();
    textController12?.dispose();

    nomeResponsavelLegalFocusNode?.dispose();
    nomeResponsavelLegalController?.dispose();

    emailResponsavelLegalFocusNode?.dispose();
    emailResponsavelLegalController?.dispose();

    cpfouCnpjResponsavelLegalFocusNode?.dispose();
    cpfouCnpjResponsavelLegalController?.dispose();

    telefoneResponsavelLegalFocusNode?.dispose();
    telefoneResponsavelLegalController?.dispose();

    agenciaFocusNode?.dispose();
    agenciaController?.dispose();

    contaFocusNode?.dispose();
    contaController?.dispose();

    digitoDaContaFocusNode?.dispose();
    digitoDaContaController?.dispose();

    chavePIXFocusNode?.dispose();
    chavePIXController?.dispose();

    faturamentoAnualFocusNode?.dispose();
    faturamentoAnualController?.dispose();

    capitalSocialInicialFocusNode?.dispose();
    capitalSocialInicialController?.dispose();

    patrimonioLiquidoFocusNode?.dispose();
    patrimonioLiquidoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
