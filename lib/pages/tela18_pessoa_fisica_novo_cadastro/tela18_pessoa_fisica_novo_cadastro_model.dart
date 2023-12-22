import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componets/documento_pessoa_fisica/documento_pessoa_fisica_widget.dart';
import '/componets/menu_side_bar_web/menu_side_bar_web_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tela18_pessoa_fisica_novo_cadastro_widget.dart'
    show Tela18PessoaFisicaNovoCadastroWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class Tela18PessoaFisicaNovoCadastroModel
    extends FlutterFlowModel<Tela18PessoaFisicaNovoCadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for menu_side_bar_web component.
  late MenuSideBarWebModel menuSideBarWebModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for nomepf widget.
  FocusNode? nomepfFocusNode;
  TextEditingController? nomepfController;
  String? Function(BuildContext, String?)? nomepfControllerValidator;
  // State field(s) for emailpf widget.
  FocusNode? emailpfFocusNode;
  TextEditingController? emailpfController;
  String? Function(BuildContext, String?)? emailpfControllerValidator;
  String? _emailpfControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for cpfpf widget.
  FocusNode? cpfpfFocusNode;
  TextEditingController? cpfpfController;
  final cpfpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfpfControllerValidator;
  String? _cpfpfControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 15) {
      return 'CPF Incorreto';
    }

    return null;
  }

  // State field(s) for estadocivilpf widget.
  String? estadocivilpfValue;
  FormFieldController<String>? estadocivilpfValueController;
  // State field(s) for dataNascpf widget.
  FocusNode? dataNascpfFocusNode;
  TextEditingController? dataNascpfController;
  final dataNascpfMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataNascpfControllerValidator;
  // State field(s) for sexoPf widget.
  String? sexoPfValue;
  FormFieldController<String>? sexoPfValueController;
  // State field(s) for nomeMaepf widget.
  FocusNode? nomeMaepfFocusNode;
  TextEditingController? nomeMaepfController;
  String? Function(BuildContext, String?)? nomeMaepfControllerValidator;
  // State field(s) for nomePaipf widget.
  FocusNode? nomePaipfFocusNode;
  TextEditingController? nomePaipfController;
  String? Function(BuildContext, String?)? nomePaipfControllerValidator;
  // State field(s) for nascionalidadepf widget.
  FocusNode? nascionalidadepfFocusNode;
  TextEditingController? nascionalidadepfController;
  String? Function(BuildContext, String?)? nascionalidadepfControllerValidator;
  // State field(s) for paisNascpf widget.
  FocusNode? paisNascpfFocusNode;
  TextEditingController? paisNascpfController;
  String? Function(BuildContext, String?)? paisNascpfControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for teleCelularpf widget.
  FocusNode? teleCelularpfFocusNode;
  TextEditingController? teleCelularpfController;
  final teleCelularpfMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? teleCelularpfControllerValidator;
  // State field(s) for telOpcionpf widget.
  FocusNode? telOpcionpfFocusNode;
  TextEditingController? telOpcionpfController;
  final telOpcionpfMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telOpcionpfControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for tipoDocpf widget.
  String? tipoDocpfValue;
  FormFieldController<String>? tipoDocpfValueController;
  // State field(s) for emissaUFpf widget.
  FocusNode? emissaUFpfFocusNode1;
  TextEditingController? emissaUFpfController1;
  String? Function(BuildContext, String?)? emissaUFpfController1Validator;
  // State field(s) for dataEmissaopf widget.
  FocusNode? dataEmissaopfFocusNode;
  TextEditingController? dataEmissaopfController;
  final dataEmissaopfMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataEmissaopfControllerValidator;
  // State field(s) for dataExpiracaopf widget.
  FocusNode? dataExpiracaopfFocusNode;
  TextEditingController? dataExpiracaopfController;
  final dataExpiracaopfMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataExpiracaopfControllerValidator;
  // State field(s) for pep widget.
  String? pepValue;
  FormFieldController<String>? pepValueController;
  // State field(s) for emissaUFpf widget.
  FocusNode? emissaUFpfFocusNode2;
  TextEditingController? emissaUFpfController2;
  String? Function(BuildContext, String?)? emissaUFpfController2Validator;
  // State field(s) for ceppf widget.
  FocusNode? ceppfFocusNode;
  TextEditingController? ceppfController;
  final ceppfMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? ceppfControllerValidator;
  String? _ceppfControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 10) {
      return 'CEP Incorreto';
    }

    return null;
  }

  // State field(s) for enderecoPF widget.
  FocusNode? enderecoPFFocusNode;
  TextEditingController? enderecoPFController;
  String? Function(BuildContext, String?)? enderecoPFControllerValidator;
  // State field(s) for cidadepf widget.
  FocusNode? cidadepfFocusNode;
  TextEditingController? cidadepfController;
  String? Function(BuildContext, String?)? cidadepfControllerValidator;
  // State field(s) for complPf widget.
  FocusNode? complPfFocusNode;
  TextEditingController? complPfController;
  String? Function(BuildContext, String?)? complPfControllerValidator;
  // State field(s) for ufPf widget.
  String? ufPfValue;
  FormFieldController<String>? ufPfValueController;
  // State field(s) for bairropf widget.
  FocusNode? bairropfFocusNode;
  TextEditingController? bairropfController;
  String? Function(BuildContext, String?)? bairropfControllerValidator;
  // State field(s) for numeropf widget.
  FocusNode? numeropfFocusNode;
  TextEditingController? numeropfController;
  String? Function(BuildContext, String?)? numeropfControllerValidator;
  // State field(s) for tiporesidenciapf widget.
  String? tiporesidenciapfValue;
  FormFieldController<String>? tiporesidenciapfValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController24;
  String? Function(BuildContext, String?)? textController24Validator;
  // State field(s) for nomeEmpresa widget.
  FocusNode? nomeEmpresaFocusNode;
  TextEditingController? nomeEmpresaController;
  String? Function(BuildContext, String?)? nomeEmpresaControllerValidator;
  // State field(s) for cnpjEmpresa widget.
  FocusNode? cnpjEmpresaFocusNode;
  TextEditingController? cnpjEmpresaController;
  final cnpjEmpresaMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? cnpjEmpresaControllerValidator;
  String? _cnpjEmpresaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 20) {
      return 'CNPJ Incorreto';
    }

    return null;
  }

  // State field(s) for cnaeEmpresa widget.
  FocusNode? cnaeEmpresaFocusNode;
  TextEditingController? cnaeEmpresaController;
  String? Function(BuildContext, String?)? cnaeEmpresaControllerValidator;
  // State field(s) for naturezaOcupPF widget.
  FocusNode? naturezaOcupPFFocusNode;
  TextEditingController? naturezaOcupPFController;
  String? Function(BuildContext, String?)? naturezaOcupPFControllerValidator;
  // State field(s) for ocupacaoPF widget.
  FocusNode? ocupacaoPFFocusNode;
  TextEditingController? ocupacaoPFController;
  String? Function(BuildContext, String?)? ocupacaoPFControllerValidator;
  // State field(s) for salLiquiPF widget.
  FocusNode? salLiquiPFFocusNode;
  TextEditingController? salLiquiPFController;
  String? Function(BuildContext, String?)? salLiquiPFControllerValidator;
  // State field(s) for outroRendapf widget.
  FocusNode? outroRendapfFocusNode;
  TextEditingController? outroRendapfController;
  String? Function(BuildContext, String?)? outroRendapfControllerValidator;
  // State field(s) for dataAdmissaPF widget.
  FocusNode? dataAdmissaPFFocusNode;
  TextEditingController? dataAdmissaPFController;
  final dataAdmissaPFMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataAdmissaPFControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController33;
  String? Function(BuildContext, String?)? textController33Validator;
  // State field(s) for nomeConjugePF widget.
  FocusNode? nomeConjugePFFocusNode;
  TextEditingController? nomeConjugePFController;
  String? Function(BuildContext, String?)? nomeConjugePFControllerValidator;
  // State field(s) for cpfConjugePF widget.
  FocusNode? cpfConjugePFFocusNode;
  TextEditingController? cpfConjugePFController;
  final cpfConjugePFMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfConjugePFControllerValidator;
  String? _cpfConjugePFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 15) {
      return 'CPF incorreto';
    }

    return null;
  }

  // State field(s) for ocupacaoConjugePF widget.
  FocusNode? ocupacaoConjugePFFocusNode;
  TextEditingController? ocupacaoConjugePFController;
  String? Function(BuildContext, String?)? ocupacaoConjugePFControllerValidator;
  // State field(s) for telConjugePF widget.
  FocusNode? telConjugePFFocusNode;
  TextEditingController? telConjugePFController;
  final telConjugePFMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telConjugePFControllerValidator;
  // State field(s) for dataNascConjugePF widget.
  FocusNode? dataNascConjugePFFocusNode;
  TextEditingController? dataNascConjugePFController;
  final dataNascConjugePFMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataNascConjugePFControllerValidator;
  // State field(s) for salConjugePF widget.
  FocusNode? salConjugePFFocusNode;
  TextEditingController? salConjugePFController;
  String? Function(BuildContext, String?)? salConjugePFControllerValidator;
  // State field(s) for outraRendaConjugePf widget.
  FocusNode? outraRendaConjugePfFocusNode;
  TextEditingController? outraRendaConjugePfController;
  String? Function(BuildContext, String?)?
      outraRendaConjugePfControllerValidator;
  // State field(s) for cnpjConjugePf widget.
  FocusNode? cnpjConjugePfFocusNode;
  TextEditingController? cnpjConjugePfController;
  final cnpjConjugePfMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? cnpjConjugePfControllerValidator;
  String? _cnpjConjugePfControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 20) {
      return 'CNPJ Incorreto';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuSideBarWebModel = createModel(context, () => MenuSideBarWebModel());
    emailpfControllerValidator = _emailpfControllerValidator;
    cpfpfControllerValidator = _cpfpfControllerValidator;
    ceppfControllerValidator = _ceppfControllerValidator;
    cnpjEmpresaControllerValidator = _cnpjEmpresaControllerValidator;
    cpfConjugePFControllerValidator = _cpfConjugePFControllerValidator;
    cnpjConjugePfControllerValidator = _cnpjConjugePfControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    menuSideBarWebModel.dispose();
    tabBarController?.dispose();
    nomepfFocusNode?.dispose();
    nomepfController?.dispose();

    emailpfFocusNode?.dispose();
    emailpfController?.dispose();

    cpfpfFocusNode?.dispose();
    cpfpfController?.dispose();

    dataNascpfFocusNode?.dispose();
    dataNascpfController?.dispose();

    nomeMaepfFocusNode?.dispose();
    nomeMaepfController?.dispose();

    nomePaipfFocusNode?.dispose();
    nomePaipfController?.dispose();

    nascionalidadepfFocusNode?.dispose();
    nascionalidadepfController?.dispose();

    paisNascpfFocusNode?.dispose();
    paisNascpfController?.dispose();

    textFieldFocusNode1?.dispose();
    textController9?.dispose();

    textFieldFocusNode2?.dispose();
    textController10?.dispose();

    teleCelularpfFocusNode?.dispose();
    teleCelularpfController?.dispose();

    telOpcionpfFocusNode?.dispose();
    telOpcionpfController?.dispose();

    textFieldFocusNode3?.dispose();
    textController13?.dispose();

    emissaUFpfFocusNode1?.dispose();
    emissaUFpfController1?.dispose();

    dataEmissaopfFocusNode?.dispose();
    dataEmissaopfController?.dispose();

    dataExpiracaopfFocusNode?.dispose();
    dataExpiracaopfController?.dispose();

    emissaUFpfFocusNode2?.dispose();
    emissaUFpfController2?.dispose();

    ceppfFocusNode?.dispose();
    ceppfController?.dispose();

    enderecoPFFocusNode?.dispose();
    enderecoPFController?.dispose();

    cidadepfFocusNode?.dispose();
    cidadepfController?.dispose();

    complPfFocusNode?.dispose();
    complPfController?.dispose();

    bairropfFocusNode?.dispose();
    bairropfController?.dispose();

    numeropfFocusNode?.dispose();
    numeropfController?.dispose();

    textFieldFocusNode4?.dispose();
    textController24?.dispose();

    nomeEmpresaFocusNode?.dispose();
    nomeEmpresaController?.dispose();

    cnpjEmpresaFocusNode?.dispose();
    cnpjEmpresaController?.dispose();

    cnaeEmpresaFocusNode?.dispose();
    cnaeEmpresaController?.dispose();

    naturezaOcupPFFocusNode?.dispose();
    naturezaOcupPFController?.dispose();

    ocupacaoPFFocusNode?.dispose();
    ocupacaoPFController?.dispose();

    salLiquiPFFocusNode?.dispose();
    salLiquiPFController?.dispose();

    outroRendapfFocusNode?.dispose();
    outroRendapfController?.dispose();

    dataAdmissaPFFocusNode?.dispose();
    dataAdmissaPFController?.dispose();

    textFieldFocusNode5?.dispose();
    textController33?.dispose();

    nomeConjugePFFocusNode?.dispose();
    nomeConjugePFController?.dispose();

    cpfConjugePFFocusNode?.dispose();
    cpfConjugePFController?.dispose();

    ocupacaoConjugePFFocusNode?.dispose();
    ocupacaoConjugePFController?.dispose();

    telConjugePFFocusNode?.dispose();
    telConjugePFController?.dispose();

    dataNascConjugePFFocusNode?.dispose();
    dataNascConjugePFController?.dispose();

    salConjugePFFocusNode?.dispose();
    salConjugePFController?.dispose();

    outraRendaConjugePfFocusNode?.dispose();
    outraRendaConjugePfController?.dispose();

    cnpjConjugePfFocusNode?.dispose();
    cnpjConjugePfController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
