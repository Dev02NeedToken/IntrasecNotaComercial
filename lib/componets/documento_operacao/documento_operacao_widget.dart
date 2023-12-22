import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'documento_operacao_model.dart';
export 'documento_operacao_model.dart';

class DocumentoOperacaoWidget extends StatefulWidget {
  const DocumentoOperacaoWidget({Key? key}) : super(key: key);

  @override
  _DocumentoOperacaoWidgetState createState() =>
      _DocumentoOperacaoWidgetState();
}

class _DocumentoOperacaoWidgetState extends State<DocumentoOperacaoWidget> {
  late DocumentoOperacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocumentoOperacaoModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          width: 700.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Documento',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      buttonSize: 44.0,
                      icon: Icon(
                        Icons.clear,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Flexible(
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Nome de Exibição',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                        ),
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                Flexible(
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(null),
                    options: [
                      'Cópia do cartão CNPJ (Empresa)',
                      'Cópia do Comprovante de Endereço da empresa emitido nos últimos 90 dias (contas de consumo&gt; água, luz, telefone fixo, gás) – deve ser o mesmo que foi preenchido na Ficha Cadastral) (Empresa)',
                      'Ficha Cadastral Simplificada Jucesp (Obrigatório apenas para empresas de São Paulo) ou Certidão emitida por Juntas de outros Estados (Empresa)',
                      'Cópia do Contrato Social ou a última Alteração Contratual Consolidada; e Alteração Contratual mais recente devidamente autenticados (p/ Ltda) OU Cópia do Estatuto Social e Ata de Eleição dos Atuais Diretores, devidamente registado (p/ S.A) (Empresa)',
                      'Cópia do Balanço Patrimonial / RE / Declaração de Faturamento (assinado pelo administrador ou contador da empresa); (Financeiro PJ)',
                      'A Escrituração Contábil Fiscal (ECF), (PGDAS) - Programa Gerador de\nDocumento de Arrecadação, a depender do porte da empresa. (Financeiro PJ)',
                      'Cópia do Documento de identificação (RG e CPF) ou CNH (Representantes, Administradores e/ou Procuradores/ Avalistas)',
                      'Comprovante de endereço do representante emitido nos últimos 90 dias (Representantes, Administradores e/ou Procuradores/ Avalistas)',
                      'Cópia da Procuração (ões) devidamente registrada (se aplicável) - (Credenciado) ',
                      'Cópia do Balanço Patrimonial /DRE / Declaração de Faturamento (assinado pelo\nadministrador ou contador da empresa) - (Credenciado financeiro PJ)',
                      'Declaração do cedente acerca das instituições que possui relação de crédito\n(assinada pelo administrador) - (Credenciado financeiro PJ)',
                      'A Escrituração Contábil Fiscal (ECF), (PGDAS) - Programa Gerador de\nDocumento de Arrecadação, a depender do porte da empresa - (Credenciado PJ)',
                      'Comprovante de endereço do representante emitido nos últimos 90 dias - (Representantes, Administradores e/ou Procuradores/ Avalistas)',
                      'Cônjuge: cópia simples do RG e CPF ou CNH; (Se aplicável) - (Representantes, Administradores e/ou Procuradores/ Avalistas)',
                      'Devedor Solidário PF: cópia simples do RG e CPF ou CNH; - (Representantes, Administradores e/ou Procuradores/ Avalistas)',
                      'Devedor Solidário PJ: cópia simples do RG e CPF ou CNH, Estatuto/ Contrato\nSocial e comprovante de endereço dos representantes do contrato de cessão. - (Representantes, Administradores e/ou Procuradores/ Avalistas)',
                      'Declaração de IRPF dos sócios representantes (último ano) - (Representantes, Administradores e/ou Procuradores/ Avalistas)'
                    ],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: double.infinity,
                    height: double.infinity,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                        ),
                    hintText: ' Selecione documento',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                    hidesUnderline: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final selectedFiles = await selectFiles(
                        multiFile: false,
                      );
                      if (selectedFiles != null) {
                        setState(() => _model.isDataUploading = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];

                        var downloadUrls = <String>[];
                        try {
                          selectedUploadedFiles = selectedFiles
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                  ))
                              .toList();

                          downloadUrls = (await Future.wait(
                            selectedFiles.map(
                              (f) async =>
                                  await uploadData(f.storagePath, f.bytes),
                            ),
                          ))
                              .where((u) => u != null)
                              .map((u) => u!)
                              .toList();
                        } finally {
                          _model.isDataUploading = false;
                        }
                        if (selectedUploadedFiles.length ==
                                selectedFiles.length &&
                            downloadUrls.length == selectedFiles.length) {
                          setState(() {
                            _model.uploadedLocalFile =
                                selectedUploadedFiles.first;
                            _model.uploadedFileUrl = downloadUrls.first;
                          });
                        } else {
                          setState(() {});
                          return;
                        }
                      }

                      await DocOperacoesRecord.collection
                          .doc()
                          .set(createDocOperacoesRecordData(
                            docNome: _model.textController.text,
                            docTipo: _model.dropDownValue,
                            docData: getCurrentTimestamp,
                            url: _model.uploadedFileUrl,
                            usuario: currentUserReference,
                          ));
                      Navigator.pop(context);
                    },
                    text: 'Enviar arquivo',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 44.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
