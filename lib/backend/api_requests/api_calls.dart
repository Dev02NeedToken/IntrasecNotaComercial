import 'dart:convert';
import 'dart:typed_data';
import '../cloud_functions/cloud_functions.dart';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Onboarding Emissor Group Code

class OnboardingEmissorGroup {
  static String baseUrl = 'https://onboarding-api.hml.cloud.laqus.io/v1/';
  static Map<String, String> headers = {
    'x-api-key':
        'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
    'x-session-token':
        '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
    'Content-type': 'application/json',
  };
  static CriaUmaSolicitacaoDeCadastroDeEmissorCall
      criaUmaSolicitacaoDeCadastroDeEmissorCall =
      CriaUmaSolicitacaoDeCadastroDeEmissorCall();
  static SubmeteASolicitacaoDeCadastroParaAprovacaoEmissorCall
      submeteASolicitacaoDeCadastroParaAprovacaoEmissorCall =
      SubmeteASolicitacaoDeCadastroParaAprovacaoEmissorCall();
  static ConsultaAsSolicitacaoDeCadastroEmissorCall
      consultaAsSolicitacaoDeCadastroEmissorCall =
      ConsultaAsSolicitacaoDeCadastroEmissorCall();
  static ConsultaUmaSolicitacaoDeCadastroEmissorIDCall
      consultaUmaSolicitacaoDeCadastroEmissorIDCall =
      ConsultaUmaSolicitacaoDeCadastroEmissorIDCall();
  static AdicionaUmaListaDeRepresentantesLegaisAtualSolicitacaoCall
      adicionaUmaListaDeRepresentantesLegaisAtualSolicitacaoCall =
      AdicionaUmaListaDeRepresentantesLegaisAtualSolicitacaoCall();
  static FazUploadDeUmDocumentoEmissorCall fazUploadDeUmDocumentoEmissorCall =
      FazUploadDeUmDocumentoEmissorCall();
}

class CriaUmaSolicitacaoDeCadastroDeEmissorCall {
  Future<ApiCallResponse> call({
    String? cnpj = '',
    String? razaoSocial = '',
    String? complemento = '',
    String? cep = '',
    String? logradouro = '',
    String? numero = '',
    String? bairro = '',
    String? cidade = '',
    String? uf = '',
    String? atividadePrincipal = '',
    double? faturamentoMedioMensal12Meses,
    String? razaoSocialBancoLiquidante = '',
    String? ispbBancoLiquidante = '',
    String? agenciaBancoLiquidante = '',
    String? contaBancoLiquidante = '',
    String? telefones = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cnpj": "${cnpj}",
  "razaoSocial": "${razaoSocial}",
  "complemento": "${complemento}",
  "cep": "${cep}",
  "logradouro": "${logradouro}",
  "numero": "${numero}",
  "bairro": "${bairro}",
  "cidade": "${cidade}",
  "uf": "${uf}",
  "atividadePrincipal": "${atividadePrincipal}",
  "faturamentoMedioMensal12Meses": ${faturamentoMedioMensal12Meses},
  "razaoSocialBancoLiquidante": "${razaoSocialBancoLiquidante}",
  "ispbBancoLiquidante": "${ispbBancoLiquidante}",
  "agenciaBancoLiquidante": "${agenciaBancoLiquidante}",
  "contaBancoLiquidante": "${contaBancoLiquidante}",
  "telefones": [
    "${telefones}"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cria uma solicitacao de cadastro de emissor',
      apiUrl:
          '${OnboardingEmissorGroup.baseUrl}emissores/solicitacoes-de-cadastro',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? situacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.situacao''',
      ));
  String? dataDaSocilitacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dataDaSolicitacao''',
      ));
  dynamic? cadastro(dynamic response) => getJsonField(
        response,
        r'''$.cadastro''',
      );
  List? cadastroRepresentantesLegais(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.representantesLegais''',
        true,
      ) as List?;
  List? cadastroDocumentos(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.documentos''',
        true,
      ) as List?;
  String? cadastroCNPJ(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.cnpj''',
      ));
  String? cadastroRazaoSocial(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.razaoSocial''',
      ));
  String? cadastroComplemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.complemento''',
      ));
  String? cadastroCEP(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.cep''',
      ));
  String? cadastroLogradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.logradouro''',
      ));
  String? cadatroNumero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.numero''',
      ));
  String? cadastroBairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.bairro''',
      ));
  String? cadastroCidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.cidade''',
      ));
  String? cadastroUF(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.uf''',
      ));
  String? cadastroAtividadePrincipal(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.atividadePrincipal''',
      ));
  int? cadastrofaturamentoMedioMensal12Meses(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.cadastro.faturamentoMedioMensal12Meses''',
      ));
  String? cadastrorazaoSocialBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.razaoSocialBancoLiquidante''',
      ));
  String? cadastroispbBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.ispbBancoLiquidante''',
      ));
  String? cadastroagenciaBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.agenciaBancoLiquidante''',
      ));
  String? cadastrocontaBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.contaBancoLiquidante''',
      ));
  List<String>? cadastrotelefones(dynamic response) => (getJsonField(
        response,
        r'''$.cadastro.telefones''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic? cadReturnEmissor(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class SubmeteASolicitacaoDeCadastroParaAprovacaoEmissorCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "d9f9a97e-e636-40df-b7be-9b71fb3a4113",
  "dataDaSolicitacao": "2023-10-11T18:39:42.4664628Z",
  "dataDaUltimaAtualizacao": "2019-08-24T14:15:22Z",
  "situacao": "PENDENTE",
  "cnpjDoEmissor": "string",
  "userId": "d9f9a97e-e636-40df-b7be-9b71fb3a4113",
  "documentos": [
    {
      "url": "string",
      "tipoDeDocumento": "AUTORIZACAO",
      "fileName": "string"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Submete a solicitacao de cadastro para aprovacao emissor',
      apiUrl:
          '${OnboardingEmissorGroup.baseUrl}emissores/solicitacoes-de-cadastro/${id}',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? situacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.situacao''',
      ));
  String? dataDaSocilitacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dataDaSolicitacao''',
      ));
  dynamic? cadastro(dynamic response) => getJsonField(
        response,
        r'''$.cadastro''',
      );
  List? cadastroRepresentantesLegais(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.representantesLegais''',
        true,
      ) as List?;
  List? cadastroDocumentos(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.documentos''',
        true,
      ) as List?;
  String? cadastroCNPJ(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.cnpj''',
      ));
  String? cadastroRazaoSocial(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.razaoSocial''',
      ));
  String? cadastroComplemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.complemento''',
      ));
  String? cadastroCEP(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.cep''',
      ));
  String? cadastroLogradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.logradouro''',
      ));
  String? cadatroNumero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.numero''',
      ));
  String? cadastroBairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.bairro''',
      ));
  String? cadastroCidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.cidade''',
      ));
  String? cadastroUF(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.uf''',
      ));
  String? cadastroAtividadePrincipal(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.atividadePrincipal''',
      ));
  int? cadastrofaturamentoMedioMensal12Meses(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.cadastro.faturamentoMedioMensal12Meses''',
      ));
  String? cadastrorazaoSocialBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.razaoSocialBancoLiquidante''',
      ));
  String? cadastroispbBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.ispbBancoLiquidante''',
      ));
  String? cadastroagenciaBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.agenciaBancoLiquidante''',
      ));
  String? cadastrocontaBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.contaBancoLiquidante''',
      ));
  List<String>? cadastrotelefones(dynamic response) => (getJsonField(
        response,
        r'''$.cadastro.telefones''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic? returnEmissor(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ConsultaAsSolicitacaoDeCadastroEmissorCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta as solicitacao de cadastro emissor',
      apiUrl:
          '${OnboardingEmissorGroup.baseUrl}emissores/solicitacoes-de-cadastro',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? situacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].situacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dataDaSolicitacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].dataDaSolicitacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dataDaUltimaAtualizacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].dataDaUltimaAtualizacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tipoDeParticipante(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipoDeParticipante''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cadastroRazaoSocial(dynamic response) => (getJsonField(
        response,
        r'''$[:].cadastroRazaoSocial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cadastroCnpj(dynamic response) => (getJsonField(
        response,
        r'''$[:].cadastroCnpj''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imfParticipanteId(dynamic response) => (getJsonField(
        response,
        r'''$[:].imfParticipanteId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? restAPIEmissor(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ConsultaUmaSolicitacaoDeCadastroEmissorIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta uma solicitacao de cadastro emissor ID',
      apiUrl:
          '${OnboardingEmissorGroup.baseUrl}emissores/solicitacoes-de-cadastro/${id}',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? situacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].situacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dataDaSolicitacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].dataDaSolicitacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dataDaUltimaAtualizacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].dataDaUltimaAtualizacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tipoDeParticipante(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipoDeParticipante''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cadastroRazaoSocial(dynamic response) => (getJsonField(
        response,
        r'''$[:].cadastroRazaoSocial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cadastroCnpj(dynamic response) => (getJsonField(
        response,
        r'''$[:].cadastroCnpj''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imfParticipanteId(dynamic response) => (getJsonField(
        response,
        r'''$[:].imfParticipanteId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? returnAPIConsulta(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class AdicionaUmaListaDeRepresentantesLegaisAtualSolicitacaoCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "id",
  "situacao": "PENDENTE",
  "dataDaSolicitacao": "2019-08-24T14:15:22Z",
  "cadastro": {
    "cnpj": "stringstringst",
    "razaoSocial": "string",
    "complemento": "string",
    "cep": "stringst",
    "logradouro": "string",
    "numero": "string",
    "bairro": "string",
    "cidade": "string",
    "uf": "st",
    "atividadePrincipal": "string",
    "faturamentoMedioMensal12Meses": 1,
    "razaoSocialBancoLiquidante": "string",
    "ispbBancoLiquidante": "string",
    "agenciaBancoLiquidante": "string",
    "contaBancoLiquidante": "string",
    "telefones": [
      "string"
    ],
    "representantesLegais": [
      {
        "tipo": "CONTROLADOR",
        "cpf": "stringstrin",
        "nome": "string",
        "email": "user@example.com"
      }
    ],
    "documentos": [
      {
        "url": "http://example.com",
        "tipoDeDocumento": "CARTAO_ASSINATURAS"
      }
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Adiciona uma lista de representantes legais  atual solicitacao',
      apiUrl:
          '${OnboardingEmissorGroup.baseUrl}emissores/solicitacoes-de-cadastro/${id}/representantes-legais',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FazUploadDeUmDocumentoEmissorCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "situacao": "PENDENTE",
  "dataDaSolicitacao": "2019-08-24T14:15:22Z",
  "cadastro": {
    "cnpj": "stringstringst",
    "razaoSocial": "string",
    "complemento": "string",
    "cep": "stringst",
    "logradouro": "string",
    "numero": "string",
    "bairro": "string",
    "cidade": "string",
    "uf": "st",
    "atividadePrincipal": "string",
    "faturamentoMedioMensal12Meses": 1,
    "razaoSocialBancoLiquidante": "string",
    "ispbBancoLiquidante": "string",
    "agenciaBancoLiquidante": "string",
    "contaBancoLiquidante": "string",
    "telefones": [
      "string"
    ],
    "representantesLegais": [
      {
        "tipo": "CONTROLADOR",
        "cpf": "stringstrin",
        "nome": "string",
        "email": "user@example.com"
      }
    ],
    "documentos": [
      {
        "url": "http://example.com",
        "tipoDeDocumento": "CARTAO_ASSINATURAS"
      }
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Faz upload de um documento emissor',
      apiUrl:
          '${OnboardingEmissorGroup.baseUrl}emissores/solicitacoes-de-cadastro/${id}/documentos',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Onboarding Emissor Group Code

/// Start Onboarding Solicitacoes de vinculo do credenciado com emissores Group Code

class OnboardingSolicitacoesDeVinculoDoCredenciadoComEmissoresGroup {
  static String baseUrl = 'https://onboarding-api.hml.cloud.laqus.io/v1/';
  static Map<String, String> headers = {
    'x-api-key':
        'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
    'x-session-token':
        '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
    'Content-type': 'application/json',
  };
  static CriaUmaSolicitacaoDeVinculoEntreOCredenciadoLogadoEUmEmissorPorCNPJCall
      criaUmaSolicitacaoDeVinculoEntreOCredenciadoLogadoEUmEmissorPorCNPJCall =
      CriaUmaSolicitacaoDeVinculoEntreOCredenciadoLogadoEUmEmissorPorCNPJCall();
  static SubmeteASolicitacaoDeVinculoComEmissorParaAprovacaoCall
      submeteASolicitacaoDeVinculoComEmissorParaAprovacaoCall =
      SubmeteASolicitacaoDeVinculoComEmissorParaAprovacaoCall();
  static ConsultaUmaSolicitacaoDeVinculoComOEmissorCall
      consultaUmaSolicitacaoDeVinculoComOEmissorCall =
      ConsultaUmaSolicitacaoDeVinculoComOEmissorCall();
  static ConsultaAsSolicitacoesDeVinculoComOEmissorCall
      consultaAsSolicitacoesDeVinculoComOEmissorCall =
      ConsultaAsSolicitacoesDeVinculoComOEmissorCall();
  static FazUploadDeUmDocumentoVinculoCall fazUploadDeUmDocumentoVinculoCall =
      FazUploadDeUmDocumentoVinculoCall();
}

class CriaUmaSolicitacaoDeVinculoEntreOCredenciadoLogadoEUmEmissorPorCNPJCall {
  Future<ApiCallResponse> call({
    String? cnpj = '',
    String? razaoSocial = '',
    String? complemento = '',
    String? cep = '',
    String? logradouro = '',
    String? numero = '',
    String? bairro = '',
    String? cidade = '',
    String? uf = '',
    String? atividadePrincipal = '',
    double? faturamentoMedioMensal12Meses,
    String? razaoSocialBancoLiquidante = '',
    String? ispbBancoLiquidante = '',
    String? agenciaBancoLiquidante = '',
    String? contaBancoLiquidante = '',
    String? telefones = '',
    String? cnpjDoEmissor = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cnpj": "${cnpj}",
  "razaoSocial": "${razaoSocial}",
  "complemento": "${complemento}",
  "cep": "${cep}",
  "logradouro": "${logradouro}",
  "numero": "${numero}",
  "bairro": "${bairro}",
  "cidade": "${cidade}",
  "uf": "${uf}",
  "atividadePrincipal": "${atividadePrincipal}",
  "faturamentoMedioMensal12Meses": ${faturamentoMedioMensal12Meses},
  "razaoSocialBancoLiquidante": "${razaoSocialBancoLiquidante}",
  "ispbBancoLiquidante": "${ispbBancoLiquidante}",
  "agenciaBancoLiquidante": "${agenciaBancoLiquidante}",
  "contaBancoLiquidante": "${contaBancoLiquidante}",
  "telefones": [
    "${telefones}"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Cria uma solicitacao de vinculo entre o credenciado logado e um emissor por CNPJ',
      apiUrl:
          '${OnboardingSolicitacoesDeVinculoDoCredenciadoComEmissoresGroup.baseUrl}emissores/${cnpjDoEmissor}/solicitacoes-de-vinculo',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? situacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.situacao''',
      ));
  String? dataDaSocilitacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dataDaSolicitacao''',
      ));
  dynamic? cadastro(dynamic response) => getJsonField(
        response,
        r'''$.cadastro''',
      );
  List? cadastroRepresentantesLegais(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.representantesLegais''',
        true,
      ) as List?;
  List? cadastroDocumentos(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.documentos''',
        true,
      ) as List?;
  String? cadastroCNPJ(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.cnpj''',
      ));
  String? cadastroRazaoSocial(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.razaoSocial''',
      ));
  String? cadastroComplemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.complemento''',
      ));
  String? cadastroCEP(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.cep''',
      ));
  String? cadastroLogradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.logradouro''',
      ));
  String? cadatroNumero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.numero''',
      ));
  String? cadastroBairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.bairro''',
      ));
  String? cadastroCidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.cidade''',
      ));
  String? cadastroUF(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cadastro.uf''',
      ));
  String? cadastroAtividadePrincipal(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.atividadePrincipal''',
      ));
  int? cadastrofaturamentoMedioMensal12Meses(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.cadastro.faturamentoMedioMensal12Meses''',
      ));
  String? cadastrorazaoSocialBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.razaoSocialBancoLiquidante''',
      ));
  String? cadastroispbBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.ispbBancoLiquidante''',
      ));
  String? cadastroagenciaBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.agenciaBancoLiquidante''',
      ));
  String? cadastrocontaBancoLiquidante(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cadastro.contaBancoLiquidante''',
      ));
  List<String>? cadastrotelefones(dynamic response) => (getJsonField(
        response,
        r'''$.cadastro.telefones''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SubmeteASolicitacaoDeVinculoComEmissorParaAprovacaoCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "d9f9a97e-e636-40df-b7be-9b71fb3a4113",
  "dataDaSolicitacao": "2023-10-11T18:39:42.4664628Z",
  "dataDaUltimaAtualizacao": "2019-08-24T14:15:22Z",
  "situacao": "PENDENTE",
  "cnpjDoEmissor": "string",
  "userId": "d9f9a97e-e636-40df-b7be-9b71fb3a4113",
  "documentos": [
    {
      "url": "string",
      "tipoDeDocumento": "AUTORIZACAO",
      "fileName": "string"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Submete a solicitacao de vinculo com emissor para aprovacao',
      apiUrl:
          '${OnboardingSolicitacoesDeVinculoDoCredenciadoComEmissoresGroup.baseUrl}emissores/solicitacoes-de-vinculo/${id}',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic situacao(dynamic response) => getJsonField(
        response,
        r'''$.situacao''',
      );
  dynamic dataDaSocilitacao(dynamic response) => getJsonField(
        response,
        r'''$.dataDaSolicitacao''',
      );
  dynamic cadastro(dynamic response) => getJsonField(
        response,
        r'''$.cadastro''',
      );
  List? cadastroRepresentantesLegais(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.representantesLegais''',
        true,
      ) as List?;
  List? cadastroDocumentos(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.documentos''',
        true,
      ) as List?;
  dynamic cadastroCNPJ(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.cnpj''',
      );
  dynamic cadastroRazaoSocial(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.razaoSocial''',
      );
  dynamic cadastroComplemento(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.complemento''',
      );
  dynamic cadastroCEP(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.cep''',
      );
  dynamic cadastroLogradouro(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.logradouro''',
      );
  dynamic cadatroNumero(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.numero''',
      );
  dynamic cadastroBairro(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.bairro''',
      );
  dynamic cadastroCidade(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.cidade''',
      );
  dynamic cadastroUF(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.uf''',
      );
  dynamic cadastroAtividadePrincipal(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.atividadePrincipal''',
      );
  dynamic cadastrofaturamentoMedioMensal12Meses(dynamic response) =>
      getJsonField(
        response,
        r'''$.cadastro.faturamentoMedioMensal12Meses''',
      );
  dynamic cadastrorazaoSocialBancoLiquidante(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.razaoSocialBancoLiquidante''',
      );
  dynamic cadastroispbBancoLiquidante(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.ispbBancoLiquidante''',
      );
  dynamic cadastroagenciaBancoLiquidante(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.agenciaBancoLiquidante''',
      );
  dynamic cadastrocontaBancoLiquidante(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.contaBancoLiquidante''',
      );
  List? cadastrotelefones(dynamic response) => getJsonField(
        response,
        r'''$.cadastro.telefones''',
        true,
      ) as List?;
}

class ConsultaUmaSolicitacaoDeVinculoComOEmissorCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta uma solicitacao de vinculo com o emissor',
      apiUrl:
          '${OnboardingSolicitacoesDeVinculoDoCredenciadoComEmissoresGroup.baseUrl}emissores/solicitacoes-de-vinculo/${id}',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ConsultaAsSolicitacoesDeVinculoComOEmissorCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta as solicitacoes de vinculo com o emissor',
      apiUrl:
          '${OnboardingSolicitacoesDeVinculoDoCredenciadoComEmissoresGroup.baseUrl}emissores/solicitacoes-de-vinculo',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? situacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].situacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dataDaSolicitacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].dataDaSolicitacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dataDaUltimaAtualizacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].dataDaUltimaAtualizacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tipoDeParticipante(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipoDeParticipante''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cadastroRazaoSocial(dynamic response) => (getJsonField(
        response,
        r'''$[:].cadastroRazaoSocial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cadastroCnpj(dynamic response) => (getJsonField(
        response,
        r'''$[:].cadastroCnpj''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imfParticipanteId(dynamic response) => (getJsonField(
        response,
        r'''$[:].imfParticipanteId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? returnAPIConsulta(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class FazUploadDeUmDocumentoVinculoCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Faz upload de um documento vinculo',
      apiUrl:
          '${OnboardingSolicitacoesDeVinculoDoCredenciadoComEmissoresGroup.baseUrl}emissores/solicitacoes-de-vinculo/{solicitacaoId}/documentos',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Onboarding Solicitacoes de vinculo do credenciado com emissores Group Code

/// Start FormalizacaoNotaComercial Group Code

class FormalizacaoNotaComercialGroup {
  static String baseUrl = 'https://formalizacao-api.hml.cloud.laqus.com.br/v1/';
  static Map<String, String> headers = {
    'x-api-key':
        'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
    'x-session-token':
        '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
    'Content-type': 'application/json',
  };
  static RealizaOEnvioDeUmDocumentosCall realizaOEnvioDeUmDocumentosCall =
      RealizaOEnvioDeUmDocumentosCall();
  static ConsultaUmDocumentosCall consultaUmDocumentosCall =
      ConsultaUmDocumentosCall();
}

class RealizaOEnvioDeUmDocumentosCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? tipo = '',
  }) async {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Realiza o envio de um documentos',
      apiUrl:
          '${FormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/formalizacoes/${id}/documentos/${tipo}',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ConsultaUmDocumentosCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta um documentos',
      apiUrl:
          '${FormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/formalizacoes/${id}/documentos',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End FormalizacaoNotaComercial Group Code

/// Start Simulacoes Group Code

class SimulacoesGroup {
  static String baseUrl = 'https://formalizacao-api.hml.cloud.laqus.com.br/v1/';
  static Map<String, String> headers = {
    'x-api-key':
        'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
    'x-session-token':
        '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
    'Content-type': 'application/json',
  };
}

/// End Simulacoes Group Code

/// Start Solicitacao De Formalizacao Nota Comercial Group Code

class SolicitacaoDeFormalizacaoNotaComercialGroup {
  static String baseUrl = 'https://formalizacao-api.hml.cloud.laqus.com.br/v1/';
  static Map<String, String> headers = {
    'x-api-key':
        'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
    'x-session-token':
        '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
    'Content-type': 'application/json',
  };
  static PassoUMCriarUmaNovaSolicitacaoDeFormalizacaoDeNotaComercialCall
      passoUMCriarUmaNovaSolicitacaoDeFormalizacaoDeNotaComercialCall =
      PassoUMCriarUmaNovaSolicitacaoDeFormalizacaoDeNotaComercialCall();
  static ConsultarSolicitacoesDeFormalizacaoPorUsuarioCall
      consultarSolicitacoesDeFormalizacaoPorUsuarioCall =
      ConsultarSolicitacoesDeFormalizacaoPorUsuarioCall();
  static PassoDOISConsultarUmaSolicitacaoDeFormalizacoesCall
      passoDOISConsultarUmaSolicitacaoDeFormalizacoesCall =
      PassoDOISConsultarUmaSolicitacaoDeFormalizacoesCall();
  static AtualizarUmaSolicitacaoDeFormalizacoesCall
      atualizarUmaSolicitacaoDeFormalizacoesCall =
      AtualizarUmaSolicitacaoDeFormalizacoesCall();
  static RetornaOsFluxosFinanceirosCall retornaOsFluxosFinanceirosCall =
      RetornaOsFluxosFinanceirosCall();
  static PassoTRESSolicitacaoAGeracaoDoTermoConstitutivoEBoletinsDeSubscricaosCall
      passoTRESSolicitacaoAGeracaoDoTermoConstitutivoEBoletinsDeSubscricaosCall =
      PassoTRESSolicitacaoAGeracaoDoTermoConstitutivoEBoletinsDeSubscricaosCall();
  static RealizaOEnvioDeUmDocumentoAdicionalJuntoASuaListaDeAssinanteCall
      realizaOEnvioDeUmDocumentoAdicionalJuntoASuaListaDeAssinanteCall =
      RealizaOEnvioDeUmDocumentoAdicionalJuntoASuaListaDeAssinanteCall();
  static SolicitacaoOEnvioDoTermoConstitutivoEDosBoletinsDeSubscrioParaAssinaturaCall
      solicitacaoOEnvioDoTermoConstitutivoEDosBoletinsDeSubscrioParaAssinaturaCall =
      SolicitacaoOEnvioDoTermoConstitutivoEDosBoletinsDeSubscrioParaAssinaturaCall();
  static ConsultaOEstadoDasAssinaturasCall consultaOEstadoDasAssinaturasCall =
      ConsultaOEstadoDasAssinaturasCall();
  static PassoSEISSolicitacaoASubmissoDaFormalizacaoParaAIMFCall
      passoSEISSolicitacaoASubmissoDaFormalizacaoParaAIMFCall =
      PassoSEISSolicitacaoASubmissoDaFormalizacaoParaAIMFCall();
  static BuscaOsDocumentosJaAssinadosGeradosPelaSolicitacoesCall
      buscaOsDocumentosJaAssinadosGeradosPelaSolicitacoesCall =
      BuscaOsDocumentosJaAssinadosGeradosPelaSolicitacoesCall();
  static PassoQUATROBuscaOsDocumentosGeradosPelaSolicitacoesCall
      passoQUATROBuscaOsDocumentosGeradosPelaSolicitacoesCall =
      PassoQUATROBuscaOsDocumentosGeradosPelaSolicitacoesCall();
  static PassoCINCOSolicitacaoOEnvioDoTermoConstitutivoEDosBoletinsDeSubscricaoParaAssinaturaCall
      passoCINCOSolicitacaoOEnvioDoTermoConstitutivoEDosBoletinsDeSubscricaoParaAssinaturaCall =
      PassoCINCOSolicitacaoOEnvioDoTermoConstitutivoEDosBoletinsDeSubscricaoParaAssinaturaCall();
  static ConsultarDocumentosCriadosPorSolicitacaoIdCall
      consultarDocumentosCriadosPorSolicitacaoIdCall =
      ConsultarDocumentosCriadosPorSolicitacaoIdCall();
}

class PassoUMCriarUmaNovaSolicitacaoDeFormalizacaoDeNotaComercialCall {
  Future<ApiCallResponse> call({
    String? emissorCnpj = '',
    String? emissorNome = '',
    String? emissorEmail = '',
    String? emissorBancoISPB = '',
    String? emissorBancoCodigo = '',
    String? emissorBancoDigito = '',
    String? emissorBancoAgencia = '',
    String? emissorBancoRazaoSocial = '',
    String? emissorBancoContaCorrente = '',
    String? emissorBancoDigitoAgencia = '',
    String? investidorEmail = '',
    String? investidorCnpjCpf = '',
    String? investidorCep = '',
    String? investidorEndereco = '',
    String? investidorBairro = '',
    String? investidorCidade = '',
    String? investidorEstado = '',
    String? investidorNumero = '',
    String? investidorComplemento = '',
    String? investidorTelefone = '',
    double? valorTotal,
    String? investidorRazaoSocial = '',
    String? investidorMeioDaIntegralizacao = '',
    String? investidorBancoISPB = '',
    String? investidorBancoCodigo = '',
    String? investidorBancoDigito = '',
    String? investidorBancoAgencia = '',
    String? investidorBancoRazaoSocial = '',
    String? investidorContaCorrente = '',
    String? investidorDigitoAgencia = '',
    String? dataDaEmissao = '',
    String? periodoPeriocidade = '',
    String? convencao = '',
    String? vencimentoDa1aParcela = '',
    String? dataDoVencimento = '',
    String? indexador = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Emissor": {
    "Cnpj": "${emissorCnpj}",
    "Nome": "${emissorNome}",
    "Email": "${emissorEmail}",
    "DadosBancariosDoEmissor": {
      "Cnpj": "${emissorCnpj}",
      "ISPB": "${emissorBancoISPB}",
      "Codigo": "${emissorBancoCodigo}",
      "Digito": "${emissorBancoDigito}",
      "Agencia": "${emissorBancoAgencia}",
      "RazaoSocial": "${emissorBancoRazaoSocial}",
      "ContaCorrente": "${emissorBancoContaCorrente}",
      "DigitoAgencia": ""
    }
  },
  "Quantidade": ${valorTotal},
  "SerieUnica": true,
  "Custodiante": {
    "Cnpj": "30306294000145",
    "Nome": "Reginaldo Lopes",
    "Email": "rodrigo.pedroso@live.com"
  },
  "Repactuacao": false,
  "UfDaEmissao": "SP",
  "Escriturador": {
    "Cnpj": "30306294000145",
    "Nome": "Alcides Jr",
    "Email": "rodrigo.pedroso@live.com"
  },
  "Investidores": [
    {
      "Email": null,
      "CnpjCpf": "${investidorCnpjCpf}",
      "Endereco": {
        "Cep": "${investidorCep}",
        "Rua": "${investidorEndereco}",
        "Bairro": "${investidorBairro}",
        "Cidade": "${investidorCidade}",
        "Estado": "${investidorEstado}",
        "Numero": "${investidorNumero}",
        "Complemento": "${investidorComplemento}"
      },
      "Telefone": "11999273654",
      "ValorTotal": ${valorTotal},
      "RazaoSocial": "FUNDO DE INVESTIMENTO LAGO",
      "PrecoUnitario": 1,
      "QuantidadeSubscrita": ${valorTotal},
      "ResponsavelFeeLaqus": true,
      "DataDaIntegralizacao": "0001-01-01T00:00:00",
      "MeioDaIntegralizacao": "TED",
      "DadosBancariosDoTitular": {
        "ISPB": "60701190",
        "Codigo": "341",
        "Digito": "8",
        "Agencia": "1036",
        "RazaoSocial": "ITAÚ UNIBANCO S.A.",
        "ContaCorrente": "18769",
        "DigitoAgencia": ""
      }
    }
  ],
  "DataDaEmissao": "${dataDaEmissao}",
  "NumeroDeSerie": null,
  "UfDePagamento": "SP",
  "CustoDaEmissao": 400,
  "LocalDaEmissao": "São Paulo",
  "NumeroDaEmissao": 0,
  "Conversibilidade": false,
  "DadosFinanceiros": {
    "Convencao": "${convencao}",
    "pagamento": {
      "dataInicioDaRentabilidade": "2023-10-19",
      "realizaAmortizacaoExtraordinaria": true,
      "detalhesAmortizacaoExtraordinaria": "Haverá possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais, desde que amortizados também os juros incorridos no respectivo período.",
      "detalhesResgateAntecipadoFacultativoTotal": "Mediante o pagamento dos juros incorridos no respectivo período.",
      "resgateAntecipadoCompulsorioTotal": true,
      "resgateAntecipadoFacultativoTotal": true,
      "tipoDePagamento": "tabelaPrice",
      "tabelaPrice": {
        "percentualSobre": "Principal",
        "vencimentoDa1aParcela": "${vencimentoDa1aParcela}",
        "periodicidade": "${periodoPeriocidade}"
      }
    },
    "AtualizacaoMonetaria": false,
    "JurosDeMoraPorAtraso": "1%",
    "PercentualDoIndexador": 1,
    "MultaContratualPorAtraso": "2%",
    "ValorDosJurosRemunetorios": 5
  },
  "DataDoVencimento": "${dataDoVencimento}",
  "LocalDePagamento": "São Paulo",
  "TipoDeLiquidacao": "Direta",
  "TipoDeDistribuicao": "Privada",
  "DetalhesRepactuacao": "As Notas Comerciais não serão objeto de repactuação programada.",
  "SubmissaoAutomatica": true,
  "ValorTotalDaEmissao": ${valorTotal},
  "DRINomeDoResponsavel": "Fausto Garcia",
  "ValorNominalUnitario": 1,
  "DRIEmailDoResponsavel": "rodrigo.pedroso@live.com",
  "AssinantesTermoConstitutivo": {
    "Emissor": [
      {
        "Cpf": "24411120070",
        "Nome": "Thais Torres",
        "Email": "rodrigo.pedroso@live.com"
      }
    ],
    "TitularNota": [
      {
        "Cpf": "51399699040",
        "Nome": "Thais Torres",
        "Email": "rodrigo.pedroso@live.com",
        "CnpjCpf": "${investidorCnpjCpf}"
      }
    ]
  },
  "TipoDeRestricaoDoSecundario": "SemRestricao",
  "AssinantesBoletimDeSubscricao": [
    {
      "Cpf": "66077180009",
      "Nome": "Francisco",
      "Email": "rodrigo.pedroso@live.com",
      "Celular": null,
      "CnpjCpfDoInvestidor": "${investidorCnpjCpf}"
    }
  ],
  "UtilizaDataDeAnuncioDaDistribuicao": false,
  "observadoresBoletimSubscricao": [
    {
      "nome": "Operaçoes",
      "email": "rodrigo.pedroso@live.com"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Passo UM Criar uma nova solicitacao de Formalizacao de Nota Comercial',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? dataDeCriacaoUtc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dataDeCriacaoUtc''',
      ));
  String? dataDaUltimaAtualizacaoUtc(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dataDaUltimaAtualizacaoUtc''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic? totalRetorno(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ConsultarSolicitacoesDeFormalizacaoPorUsuarioCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar solicitacoes de formalizacao por usuario',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? respAPI(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class PassoDOISConsultarUmaSolicitacaoDeFormalizacoesCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Passo DOIS Consultar uma solicitacao de Formalizacoes',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AtualizarUmaSolicitacaoDeFormalizacoesCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "numeroDaEmissao": 0,
  "serieUnica": true,
  "numeroDeSerie": 2147483647,
  "dataDaEmissao": "2019-08-24T14:15:22Z",
  "dataDoVencimento": "2019-08-24T14:15:22Z",
  "valorNominalUnitario": 2147483647,
  "valorTotalDaEmissao": 2147483647,
  "quantidade": 2147483647,
  "destinacaoDeRecursos": "string",
  "conversibilidade": true,
  "custoDaEmissao": 2147483647,
  "repactuacao": true,
  "detalhesRepactuacao": "string",
  "localDePagamento": "string",
  "ufDePagamento": "st",
  "driEmailDoResponsavel": "user@example.com",
  "driNomeDoResponsavel": "string",
  "localDaEmissao": "string",
  "ufDaEmissao": "st",
  "tipoDeLiquidacao": "Outros",
  "tipoDeDistribuicao": "Publica",
  "utilizaDataDeAnuncioDaDistribuicao": true,
  "tipoDeRestricaoDoSecundario": "SemRestricao",
  "classificacoesDeRisco": [
    {
      "nomeDaAgencia": "string",
      "rating": "string"
    }
  ],
  "dadosFinanceiros": {
    "jurosDeMoraPorAtraso": "string",
    "multaContratualPorAtraso": "string",
    "atualizacaoMonetaria": true,
    "valorDosJurosRemunetorios": 2147483647,
    "percentualDoIndexador": 2147483647,
    "periodo": "AoMes",
    "indexador": "Pre",
    "convencao": "Convencao_30_360",
    "incorporarJurosNoPrincipal": true,
    "dataDaIncorporacaoDeJuros": "2019-08-24T14:15:22Z",
    "pagamento": {
      "inicioRentabilidade": "DataEmissao",
      "realizaAmortizacaoExtraordinaria": true,
      "detalhesAmortizacaoExtraordinaria": "string",
      "resgateAntecipadoFacultativoTotal": true,
      "detalhesResgateAntecipadoFacultativoTotal": "string",
      "ofertaDeResgateAntecipado": true,
      "detalhesOfertaDeResgateAntecipado": "string",
      "resgateAntecipadoCompulsorioTotal": true,
      "tipoDePagamento": "PagamentoFinal",
      "tabelaSac": {
        "jurosPercentualSobre": "Principal",
        "jurosVencimentoDa1aParcela": "2019-08-24T14:15:22Z",
        "jurosPeriodicidade": "Quinzenal",
        "amortizacaoPercentualSobre": "Principal",
        "amortizacaoVencimentoDa1aParcela": "2019-08-24T14:15:22Z",
        "amortizacaoPeriodicidade": "Quinzenal"
      },
      "tabelaPrice": {
        "percentualSobre": "Principal",
        "vencimentoDa1aParcela": "2019-08-24T14:15:22Z",
        "periodicidade": "Quinzenal"
      }
    }
  },
  "credenciado": {
    "cnpj": "stringstringst",
    "nome": "string",
    "email": "user@example.com"
  },
  "garantias": [
    {
      "tipoDeGarantia": "Fidejussoria"
    }
  ],
  "emissor": {
    "cnpj": "stringstringst",
    "nome": "string",
    "email": "user@example.com",
    "dadosBancariosDoEmissor": {
      "codigo": "string",
      "agencia": "string",
      "contaCorrente": "string",
      "digito": "string",
      "digitoAgencia": "string"
    }
  },
  "escriturador": {
    "cnpj": "stringstringst",
    "nome": "string",
    "email": "user@example.com"
  },
  "custodiante": {
    "cnpj": "stringstringst",
    "nome": "string",
    "email": "user@example.com"
  },
  "investidores": [
    {
      "razaoSocial": "string",
      "cnpjCpf": "stringstrin",
      "dadosBancariosDoTitular": {
        "codigo": "string",
        "agencia": "string",
        "contaCorrente": "string",
        "digito": "string",
        "digitoAgencia": "string"
      },
      "precoUnitario": 2147483647,
      "valorTotal": 2147483647,
      "quantidadeSubscrita": 2147483647,
      "meioDaIntegralizacao": "TED",
      "email": "user@example.com",
      "telefone": "string",
      "endereco": {
        "rua": "string",
        "numero": "string",
        "complemento": "string",
        "bairro": "string",
        "cidade": "string",
        "estado": "string",
        "cep": "string"
      },
      "responsavelFeeLaqus": true
    }
  ],
  "assinantesTermoConstitutivo": {
    "emissor": [
      {
        "nome": "string",
        "email": "user@example.com",
        "celular": "string",
        "cpf": "stringstrin"
      }
    ],
    "escriturador": [
      {
        "nome": "string",
        "email": "user@example.com",
        "celular": "string",
        "cpf": "stringstrin"
      }
    ],
    "devedoresSolidarios": [
      {
        "nome": "string",
        "email": "user@example.com",
        "celular": "string",
        "cpf": "stringstrin",
        "cnpjCpfDevedorSolidario": "stringstrin"
      }
    ],
    "titularNota": [
      {
        "nome": "string",
        "email": "user@example.com",
        "celular": "string",
        "cpf": "stringstrin",
        "cnpjCpf": "stringstrin"
      }
    ],
    "avalista": [
      {
        "nome": "string",
        "email": "user@example.com",
        "celular": "string",
        "cpf": "stringstrin",
        "cnpjCpfAvalista": "stringstrin",
        "conjugeAvalista": {
          "nome": "string",
          "email": "user@example.com",
          "celular": "string",
          "cpf": "stringstrin",
          "cnpjCpfConjugeAvalista": "stringstrin"
        }
      }
    ]
  },
  "assinantesBoletimDeSubscricao": [
    {
      "nome": "string",
      "email": "user@example.com",
      "celular": "string",
      "cpf": "stringstrin",
      "cnpjCpfDoInvestidor": "stringstrin"
    }
  ],
  "gruposAssinantesBoletimDeSubscricao": [
    {
      "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
      "cnpjCpfDoInvestidor": "stringstrin"
    }
  ],
  "observadoresTermoConstitutivo": [
    {
      "nome": "string",
      "email": "user@example.com"
    }
  ],
  "observadoresBoletimSubscricao": [
    {
      "nome": "string",
      "email": "user@example.com"
    }
  ],
  "submissaoAutomatica": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Atualizar uma solicitacao de Formalizacoes',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetornaOsFluxosFinanceirosCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Retorna os fluxos financeiros',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}/fluxos-financeiros',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PassoTRESSolicitacaoAGeracaoDoTermoConstitutivoEBoletinsDeSubscricaosCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "termoConstitutivoTemplateId": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Passo TRES Solicitacao a geracao do Termo Constitutivo e Boletins de Subscricaos',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}/documentos',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic dataDeCriacaoUtc(dynamic response) => getJsonField(
        response,
        r'''$.dataDeCriacaoUtc''',
      );
  dynamic dataDaUltimaAtualizacaoUtc(dynamic response) => getJsonField(
        response,
        r'''$.dataDaUltimaAtualizacaoUtc''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic codigoDoInstrumentoFinanceiro(dynamic response) => getJsonField(
        response,
        r'''$.codigoDoInstrumentoFinanceiro''',
      );
}

class RealizaOEnvioDeUmDocumentoAdicionalJuntoASuaListaDeAssinanteCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "dataDeCriacaoUtc": "2019-08-24T14:15:22Z",
  "dataDaUltimaAtualizacaoUtc": "2019-08-24T14:15:22Z",
  "status": "EmCadastro",
  "codigoDoInstrumentoFinanceiro": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Realiza o envio de um documento adicional junto a sua lista de assinante',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}/documentos/adicionais',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SolicitacaoOEnvioDoTermoConstitutivoEDosBoletinsDeSubscrioParaAssinaturaCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "dataDeCriacaoUtc": "2019-08-24T14:15:22Z",
  "dataDaUltimaAtualizacaoUtc": "2019-08-24T14:15:22Z",
  "status": "EmCadastro",
  "codigoDoInstrumentoFinanceiro": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Solicitacao o envio do Termo Constitutivo e dos Boletins de Subscrio para assinatura',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}/documentos/assinaturas',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ConsultaOEstadoDasAssinaturasCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta o estado das assinaturas',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}/documentos/assinaturas',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PassoSEISSolicitacaoASubmissoDaFormalizacaoParaAIMFCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
  "dataDeCriacaoUtc": "2019-08-24T14:15:22Z",
  "dataDaUltimaAtualizacaoUtc": "2019-08-24T14:15:22Z",
  "status": "EmCadastro",
  "codigoDoInstrumentoFinanceiro": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Passo SEIS Solicitacao a submisso da Formalizacao para a IMF',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}/submissoes',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscaOsDocumentosJaAssinadosGeradosPelaSolicitacoesCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca os documentos ja assinados gerados pela solicitacoes',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}/documentos/assinados',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PassoQUATROBuscaOsDocumentosGeradosPelaSolicitacoesCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Passo QUATRO Busca os documentos gerados pela solicitacoes',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}/documentos/criados',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PassoCINCOSolicitacaoOEnvioDoTermoConstitutivoEDosBoletinsDeSubscricaoParaAssinaturaCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? dataDeCriacaoUtc = '',
    String? dataDaUltimaAtualizacaoUtc = '',
    String? status = '',
    String? codigoDoInstrumentoFinanceiro = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "74380bef-0aa2-4455-8ef3-93800b5d1350",
  "dataDeCriacaoUtc": "2023-11-13T19:12:38.9764363Z",
  "dataDaUltimaAtualizacaoUtc": "2023-11-13T19:12:38.9764363Z",
  "status": "EmCadastro"
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Passo CINCO Solicitacao o envio do Termo Constitutivo e dos Boletins de Subscricao para assinatura',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/{solicitacaoId}/documentos/assinaturas',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class ConsultarDocumentosCriadosPorSolicitacaoIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar documentos criados por solicitacao id',
      apiUrl:
          '${SolicitacaoDeFormalizacaoNotaComercialGroup.baseUrl}notas-comerciais/solicitacoes-de-formalizacao/${id}/documentos/criados',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'x-session-token':
            '38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Solicitacao De Formalizacao Nota Comercial Group Code

/// Start Laqus - Api de Notifications Group Code

class LaqusApiDeNotificationsGroup {
  static String baseUrl = 'https://notifier-api.laqus.io/';
  static Map<String, String> headers = {};
  static ListaAConfiguracaoAtualDoWebhookCall
      listaAConfiguracaoAtualDoWebhookCall =
      ListaAConfiguracaoAtualDoWebhookCall();
  static ConfiguraOWebhookCall configuraOWebhookCall = ConfiguraOWebhookCall();
  static AtivaOUsoDoWebhookEDesabilitaONotificationsFeedCall
      ativaOUsoDoWebhookEDesabilitaONotificationsFeedCall =
      AtivaOUsoDoWebhookEDesabilitaONotificationsFeedCall();
  static DesativaOUsoDoWebhookEHabilitaONotificationsFeedCall
      desativaOUsoDoWebhookEHabilitaONotificationsFeedCall =
      DesativaOUsoDoWebhookEHabilitaONotificationsFeedCall();
  static ListaOsEventosGeradosQueAindaNaoTiveramAckInformadoCall
      listaOsEventosGeradosQueAindaNaoTiveramAckInformadoCall =
      ListaOsEventosGeradosQueAindaNaoTiveramAckInformadoCall();
  static InformaQueUmaSerieDeEventosForamRecebidosPeloRecebedorCall
      informaQueUmaSerieDeEventosForamRecebidosPeloRecebedorCall =
      InformaQueUmaSerieDeEventosForamRecebidosPeloRecebedorCall();
  static InformaQueUmDeEventoFoiRecebidoPeloRecebedorCall
      informaQueUmDeEventoFoiRecebidoPeloRecebedorCall =
      InformaQueUmDeEventoFoiRecebidoPeloRecebedorCall();
}

class ListaAConfiguracaoAtualDoWebhookCall {
  Future<ApiCallResponse> call({
    String? xSessionToken = '',
    String? xApiKey = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Lista a configuração atual do webhook',
      apiUrl: '${LaqusApiDeNotificationsGroup.baseUrl}/v1/webhook',
      callType: ApiCallType.GET,
      headers: {
        'x-session-token': '${xSessionToken}',
        'x-api-key': '${xApiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfiguraOWebhookCall {
  Future<ApiCallResponse> call({
    String? xSessionToken = '',
    String? xApiKey = '',
  }) async {
    final ffApiRequestBody = '''
{
  "webhookUrl": "",
  "token": "",
  "active": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Configura o webhook',
      apiUrl: '${LaqusApiDeNotificationsGroup.baseUrl}/v1/webhook',
      callType: ApiCallType.PUT,
      headers: {
        'x-session-token': '${xSessionToken}',
        'x-api-key': '${xApiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AtivaOUsoDoWebhookEDesabilitaONotificationsFeedCall {
  Future<ApiCallResponse> call({
    String? xSessionToken = '',
    String? xApiKey = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Ativa o uso do webhook e desabilita o notifications feed',
      apiUrl: '${LaqusApiDeNotificationsGroup.baseUrl}/v1/webhook/activated',
      callType: ApiCallType.PUT,
      headers: {
        'x-session-token': '${xSessionToken}',
        'x-api-key': '${xApiKey}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DesativaOUsoDoWebhookEHabilitaONotificationsFeedCall {
  Future<ApiCallResponse> call({
    String? xSessionToken = '',
    String? xApiKey = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Desativa o uso do webhook e habilita o notifications feed',
      apiUrl: '${LaqusApiDeNotificationsGroup.baseUrl}/v1/webhook/deactivated',
      callType: ApiCallType.PUT,
      headers: {
        'x-session-token': '${xSessionToken}',
        'x-api-key': '${xApiKey}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListaOsEventosGeradosQueAindaNaoTiveramAckInformadoCall {
  Future<ApiCallResponse> call({
    String? xSessionToken = '',
    String? xApiKey = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Lista os eventos gerados que ainda não tiveram ack informado',
      apiUrl: '${LaqusApiDeNotificationsGroup.baseUrl}/v1/notifications',
      callType: ApiCallType.GET,
      headers: {
        'x-session-token': '${xSessionToken}',
        'x-api-key': '${xApiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InformaQueUmaSerieDeEventosForamRecebidosPeloRecebedorCall {
  Future<ApiCallResponse> call({
    String? xSessionToken = '',
    String? xApiKey = '',
  }) async {
    final ffApiRequestBody = '''
[
  ""
]''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Informa que uma série de eventos foram recebidos pelo recebedor',
      apiUrl: '${LaqusApiDeNotificationsGroup.baseUrl}/v1/notifications/ack',
      callType: ApiCallType.POST,
      headers: {
        'x-session-token': '${xSessionToken}',
        'x-api-key': '${xApiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InformaQueUmDeEventoFoiRecebidoPeloRecebedorCall {
  Future<ApiCallResponse> call({
    String? notificationId = '',
    String? xSessionToken = '',
    String? xApiKey = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Informa que um  de evento foi recebido pelo recebedor',
      apiUrl:
          '${LaqusApiDeNotificationsGroup.baseUrl}/v1/notifications/${notificationId}/ack',
      callType: ApiCallType.POST,
      headers: {
        'x-session-token': '${xSessionToken}',
        'x-api-key': '${xApiKey}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Laqus - Api de Notifications Group Code

/// Start Documentero API Group Code

class DocumenteroAPIGroup {
  static String baseUrl = 'https://app.documentero.com/api';
  static Map<String, String> headers = {};
  static CreateDocumentCall createDocumentCall = CreateDocumentCall();
}

class CreateDocumentCall {
  Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "document": "HJQr4fQpFjD6L5RcNCyY",
  "apiKey": "SKE27FQ-MAOUS2Y-VQ2YPLQ-OZ23WCY",
  "format": "docx",
  "data": {
    "numeroDaEmissao": "",
    "numeroDeSerie": "",
    "emissor": "",
    "cnpjemissor": "",
    "dataDaEmissao": "",
    "dataDoVencimento": "",
    "valorTotalDaEmissao": "",
    "valorNominalUnitario": "",
    "quantidade": "",
    "custoDaEmissao": "",
    "BancoEscriturador": "",
    "AgênciaEscriturador": "",
    "ContaEscriturador": "",
    "repactuacao": "",
    "detalhesRepactuacao": "",
    "ClassificacaoDeRiscoV1": "",
    "TipoDeDistribuicaoV1": "",
    "utilizaDataDeAnuncioDaDistribuicao": "",
    "EmissorV1NBanco": "",
    "EmissorV1Banco": "",
    "EmissorV1Agencia": "",
    "EmissorV1conta": "",
    "DadosFinanceirosV1valorDosJurosRemunetorios": "",
    "DadosFinanceirosV1periodo": "",
    "DadosFinanceirosV1percentualDoIndexador": "",
    "DadosFinanceirosV1indexador": "",
    "DadosFinanceirosV1convencao": "",
    "PagamentoV1InicioRentabilidadeV1": "",
    "PagamentoV1tabelaPricevencimentoDa1aParcela": "",
    "TabelaPriceV1periodicidade": "",
    "PagamentoV1realizaAmortizacaoExtraordinaria": "",
    "PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal": "",
    "PagamentoV1resgateAntecipadoCompulsorioTotal": "",
    "cadastrodeemissorlogradouro": "",
    "cadastrodeemissornumero": "",
    "cadastrodeemissorbairro": "",
    "cadastrodeemissorcidade": "",
    "cadastrodeemissoruf": "",
    "cadastrodeemissorcep": "",
    "AssinantesTermoConstitutivoV1EmissorV1nome": "",
    "AssinantesTermoConstitutivoV1EmissorV1telefones": "",
    "AssinantesTermoConstitutivoV1EmissorV1email": "",
    "serieUnica": "",
    "NumdaEmissao": "",
    "InvestidorV1razaoSocial": "",
    "InvestidorV1cnpjCpf": "",
    "InvestidorV1enderecorua": "",
    "InvestidorV1endereconumero": "",
    "InvestidorV1enderecocomplemento": "",
    "InvestidorV1enderecobairro": "",
    "InvestidorV1enderecocep": "",
    "InvestidorV1enderecocidade": "",
    "InvestidorV1enderecoestado": "",
    "InvestidorV1telefone": "",
    "dadosBancariosDoEmissorbanco": "",
    "dadosBancariosDoEmissorcodigo": "",
    "dadosBancariosDoEmissoragencia": "",
    "dadosBancariosDoEmissorcontaCorrente": "",
    "dadosBancariosDoEmissorcontaCorrentedigito": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create document',
      apiUrl: '${DocumenteroAPIGroup.baseUrl}/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Documentero API Group Code

/// Start DFS Group Code

class DfsGroup {
  static String baseUrl = 'https://secure.d4sign.com.br/api/v1/';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };
  static UPLOADDeUmDocumentoPrincipalCall uPLOADDeUmDocumentoPrincipalCall =
      UPLOADDeUmDocumentoPrincipalCall();
  static EnviarDocumentoParaAssinaturaCall enviarDocumentoParaAssinaturaCall =
      EnviarDocumentoParaAssinaturaCall();
  static CadastrarSignatriosCopyCall cadastrarSignatriosCopyCall =
      CadastrarSignatriosCopyCall();
  static CadastrarWebhookEmUmDocumentoCall cadastrarWebhookEmUmDocumentoCall =
      CadastrarWebhookEmUmDocumentoCall();
  static DocumentoAPartirDoTemplateWORDCall documentoAPartirDoTemplateWORDCall =
      DocumentoAPartirDoTemplateWORDCall();
  static DocumentoAPartirDoTemplateWORDCopyCall
      documentoAPartirDoTemplateWORDCopyCall =
      DocumentoAPartirDoTemplateWORDCopyCall();
  static DOWNLOADDeUmDocumentoCall dOWNLOADDeUmDocumentoCall =
      DOWNLOADDeUmDocumentoCall();
  static ListarTodosOsDocumentosCall listarTodosOsDocumentosCall =
      ListarTodosOsDocumentosCall();
  static ListarUmDocumentoEspecficoCall listarUmDocumentoEspecficoCall =
      ListarUmDocumentoEspecficoCall();
}

class UPLOADDeUmDocumentoPrincipalCall {
  Future<ApiCallResponse> call({
    String? uuidSafe = '16e99d47-c83b-45e4-b849-2109a6c52c66',
    String? file =
        'https://app.documentero.com/admin/overview/HJQr4fQpFjD6L5RcNCyY',
    String? uuidFolder = 'f749dfc1-5f7e-4c9c-8e18-cab045d1e2aa',
  }) async {
    final ffApiRequestBody = '''
{
  "file": "${file}",
  "uuid_folder": "${uuidFolder}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UPLOAD de um documento principal',
      apiUrl:
          '${DfsGroup.baseUrl}documents/16e99d47-c83b-45e4-b849-2109a6c52c66/upload?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EnviarDocumentoParaAssinaturaCall {
  Future<ApiCallResponse> call({
    String? uuidDocument = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar documento para assinatura',
      apiUrl:
          '${DfsGroup.baseUrl}documents/${uuidDocument}/sendtosigner?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic mensagempt(dynamic response) => getJsonField(
        response,
        r'''$.mensagem_pt''',
      );
}

class CadastrarSignatriosCopyCall {
  Future<ApiCallResponse> call({
    String? uuidDocument = '',
    String? email = '',
    String? act = '4',
    String? foreign = '0',
    String? certificadoicpbr = 'sim',
    String? embedMethodauth = 'email',
    String? email2 = '',
    String? act2 = '',
    String? foreign2 = '',
    String? certificadoicpbr2 = '',
    String? embedMethodauth2 = '',
  }) async {
    final ffApiRequestBody = '''
{"signers":"[{\\"email\\":\\"${email}\\",
      \\"act\\":\\"1\\",
      \\"foreign\\":\\"0\\",
      \\"certificadoicpbr\\":\\"0\\"}
 ]
"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cadastrar signatrios Copy',
      apiUrl:
          '${DfsGroup.baseUrl}documents/${uuidDocument}/createlist?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic keysigner(dynamic response) => getJsonField(
        response,
        r'''$.message[:].key_signer''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.message[:].email''',
      );
  dynamic act(dynamic response) => getJsonField(
        response,
        r'''$.message[:].act''',
      );
  dynamic foreign(dynamic response) => getJsonField(
        response,
        r'''$.message[:].foreign''',
      );
  dynamic certificadoicpbr(dynamic response) => getJsonField(
        response,
        r'''$.message[:].certificadoicpbr''',
      );
  dynamic assinaturapresencial(dynamic response) => getJsonField(
        response,
        r'''$.message[:].assinatura_presencial''',
      );
  dynamic docauth(dynamic response) => getJsonField(
        response,
        r'''$.message[:].doc_auth''',
      );
  dynamic embedmethodauth(dynamic response) => getJsonField(
        response,
        r'''$.message[:].embed_methodauth''',
      );
  dynamic uploadallow(dynamic response) => getJsonField(
        response,
        r'''$.message[:].upload_allow''',
      );
  dynamic docauthandselfie(dynamic response) => getJsonField(
        response,
        r'''$.message[:].docauthandselfie''',
      );
  dynamic skipemail(dynamic response) => getJsonField(
        response,
        r'''$.message[:].skipemail''',
      );
  dynamic whatsapp(dynamic response) => getJsonField(
        response,
        r'''$.message[:].whatsapp''',
      );
  dynamic authpix(dynamic response) => getJsonField(
        response,
        r'''$.message[:].auth_pix''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.message[:].status''',
      );
  dynamic success(dynamic response) => getJsonField(
        response,
        r'''$.message[:].success''',
      );
}

class CadastrarWebhookEmUmDocumentoCall {
  Future<ApiCallResponse> call({
    String? uuidDocument = '',
    String? url = '',
  }) async {
    final ffApiRequestBody = '''
{
"url":"url"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cadastrar Webhook em um documento',
      apiUrl: '${DfsGroup.baseUrl}documents/${uuidDocument}/webhooks',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DocumentoAPartirDoTemplateWORDCall {
  Future<ApiCallResponse> call({
    String? uuidSafe = '',
  }) async {
    final ffApiRequestBody = '''
{
    "name_document": "TC INTRA",
    "uuid_folder": "f749dfc1-5f7e-4c9c-8e18-cab045d1e2aa",
    "templates": {
	    "<id_template 1>": {
    "numeroDaEmissao": "<numeroDaEmissao>",
    "numeroDeSerie": "<numeroDeSerie>",
    "emissor": "<emissor>",
    "cnpjemissor": "<cnpjemissor>",
    "dataDaEmissao": "<dataDaEmissao>",
    "dataDoVencimento": "<dataDoVencimento>",
    "valorTotalDaEmissao": "<valorTotalDaEmissao>",
    "valorNominalUnitario": "<valorNominalUnitario>",
    "quantidade": "<quantidade>",
    "custoDaEmissao": "<custoDaEmissao>",
    "BancoEscriturador": "<BancoEscriturador>",
    "AgênciaEscriturador": "AgênciaEscriturador",
    "ContaEscriturador": "<ContaEscriturador>",
    "repactuacao": "<repactuacao>",
    "detalhesRepactuacao": "<detalhesRepactuacao>",
    "ClassificacaoDeRiscoV1": "<ClassificacaoDeRiscoV1>",
    "TipoDeDistribuicaoV1": "<TipoDeDistribuicaoV1>",
    "utilizaDataDeAnuncioDaDistribuicao": "<utilizaDataDeAnuncioDaDistribuicao>",
    "EmissorV1NBanco": "<EmissorV1NBanco>
    "EmissorV1Banco": "<EmissorV1Banco>",
    "EmissorV1Agencia": "<EmissorV1Agencia>",
    "EmissorV1conta": "<EmissorV1conta>",
    "DadosFinanceirosV1valorDosJurosRemunetorios": "<DadosFinanceirosV1valorDosJurosRemunetorios>",
    "DadosFinanceirosV1periodo": "<DadosFinanceirosV1periodo>",
    "DadosFinanceirosV1percentualDoIndexador": "<DadosFinanceirosV1percentualDoIndexador>",
    "DadosFinanceirosV1indexador": "<DadosFinanceirosV1indexador>",
    "DadosFinanceirosV1convencao": "<DadosFinanceirosV1convencao>",
    "PagamentoV1InicioRentabilidadeV1": "<PagamentoV1InicioRentabilidadeV1>",
    "PagamentoV1tabelaPricevencimentoDa1aParcela": "<PagamentoV1tabelaPricevencimentoDa1aParcela>",
    "TabelaPriceV1periodicidade": "<TabelaPriceV1periodicidade>",
    "PagamentoV1realizaAmortizacaoExtraordinaria": "<PagamentoV1realizaAmortizacaoExtraordinaria>",
    "PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal": "<PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal>",
    "PagamentoV1resgateAntecipadoCompulsorioTotal": "<PagamentoV1resgateAntecipadoCompulsorioTotal>",
    "cadastrodeemissorlogradouro": "<cadastrodeemissorlogradouro>",
    "cadastrodeemissornumero": "<cadastrodeemissornumero>",
    "cadastrodeemissorbairro": "<cadastrodeemissorbairro>",
    "cadastrodeemissorcidade": "<cadastrodeemissorcidade>",
    "cadastrodeemissoruf": "<cadastrodeemissoruf>",
    "cadastrodeemissorcep": "<cadastrodeemissorcep>",
    "AssinantesTermoConstitutivoV1EmissorV1nome": "<AssinantesTermoConstitutivoV1EmissorV1nome>",
    "AssinantesTermoConstitutivoV1EmissorV1telefones": "<AssinantesTermoConstitutivoV1EmissorV1telefones>",
    "AssinantesTermoConstitutivoV1EmissorV1email": "<AssinantesTermoConstitutivoV1EmissorV1email>",
    "serieUnica": "<serieUnica>",
    "NumdaEmissao": "<numeroDaEmissao>",
    "InvestidorV1razaoSocial": "<InvestidorV1razaoSocial>",
    "InvestidorV1cnpjCpf": "<InvestidorV1cnpjCpf>",
    "InvestidorV1enderecorua": "<InvestidorV1enderecorua>",
    "InvestidorV1endereconumero": "<InvestidorV1endereconumero>",
    "InvestidorV1enderecocomplemento": "<InvestidorV1enderecocomplemento>",
    "InvestidorV1enderecobairro": "<InvestidorV1enderecobairro>",
    "InvestidorV1enderecocep": "<InvestidorV1enderecocep>",
    "InvestidorV1enderecocidade": "<InvestidorV1enderecocidade>",
    "InvestidorV1enderecoestado": "<InvestidorV1enderecoestado>",
    "InvestidorV1telefone": "<InvestidorV1telefone>",
    "dadosBancariosDoEmissorbanco": "<dadosBancariosDoEmissorbanco>",
    "dadosBancariosDoEmissorcodigo": "<dadosBancariosDoEmissorcodigo>",
    "dadosBancariosDoEmissoragencia": "<dadosBancariosDoEmissoragencia>",
    "dadosBancariosDoEmissorcontaCorrente": "<dadosBancariosDoEmissorcontaCorrente>",
    "dadosBancariosDoEmissorcontaCorrentedigito": "<dadosBancariosDoEmissorcontaCorrentedigito>"
   },
 }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Documento a partir do template WORD',
      apiUrl:
          '${DfsGroup.baseUrl}documents/${uuidSafe}/makedocumentbytemplate?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DocumentoAPartirDoTemplateWORDCopyCall {
  Future<ApiCallResponse> call({
    String? uuidSafe = '',
  }) async {
    final ffApiRequestBody = '''
{
    "name_document": "tc_1_ad_administracao_e_participacoes_Intra_v9.docx",
    "uuid_folder": "f749dfc1-5f7e-4c9c-8e18-cab045d1e2aa",
    "templates": {
	    "<id_template 1>": {
    "numeroDaEmissao": "<numeroDaEmissao>",
    "numeroDeSerie": "<numeroDeSerie>",
    "emissor": "<emissor>",
    "cnpjemissor": "<cnpjemissor>",
    "dataDaEmissao": "<dataDaEmissao>",
    "dataDoVencimento": "<dataDoVencimento>",
    "valorTotalDaEmissao": "<valorTotalDaEmissao>",
    "valorNominalUnitario": "<valorNominalUnitario>",
    "quantidade": "<quantidade>",
    "custoDaEmissao": "<custoDaEmissao>",
    "BancoEscriturador": "<BancoEscriturador>",
    "AgênciaEscriturador": "AgênciaEscriturador",
    "ContaEscriturador": "<ContaEscriturador>",
    "repactuacao": "<repactuacao>",
    "detalhesRepactuacao": "<detalhesRepactuacao>",
    "ClassificacaoDeRiscoV1": "<ClassificacaoDeRiscoV1>",
    "TipoDeDistribuicaoV1": "<TipoDeDistribuicaoV1>",
    "utilizaDataDeAnuncioDaDistribuicao": "<utilizaDataDeAnuncioDaDistribuicao>",
    "EmissorV1NBanco": "<EmissorV1NBanco>
    "EmissorV1Banco": "<EmissorV1Banco>",
    "EmissorV1Agencia": "<EmissorV1Agencia>",
    "EmissorV1conta": "<EmissorV1conta>",
    "DadosFinanceirosV1valorDosJurosRemunetorios": "<DadosFinanceirosV1valorDosJurosRemunetorios>",
    "DadosFinanceirosV1periodo": "<DadosFinanceirosV1periodo>",
    "DadosFinanceirosV1percentualDoIndexador": "<DadosFinanceirosV1percentualDoIndexador>",
    "DadosFinanceirosV1indexador": "<DadosFinanceirosV1indexador>",
    "DadosFinanceirosV1convencao": "<DadosFinanceirosV1convencao>",
    "PagamentoV1InicioRentabilidadeV1": "<PagamentoV1InicioRentabilidadeV1>",
    "PagamentoV1tabelaPricevencimentoDa1aParcela": "<PagamentoV1tabelaPricevencimentoDa1aParcela>",
    "TabelaPriceV1periodicidade": "<TabelaPriceV1periodicidade>",
    "PagamentoV1realizaAmortizacaoExtraordinaria": "<PagamentoV1realizaAmortizacaoExtraordinaria>",
    "PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal": "<PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal>",
    "PagamentoV1resgateAntecipadoCompulsorioTotal": "<PagamentoV1resgateAntecipadoCompulsorioTotal>",
    "cadastrodeemissorlogradouro": "<cadastrodeemissorlogradouro>",
    "cadastrodeemissornumero": "<cadastrodeemissornumero>",
    "cadastrodeemissorbairro": "<cadastrodeemissorbairro>",
    "cadastrodeemissorcidade": "<cadastrodeemissorcidade>",
    "cadastrodeemissoruf": "<cadastrodeemissoruf>",
    "cadastrodeemissorcep": "<cadastrodeemissorcep>",
    "AssinantesTermoConstitutivoV1EmissorV1nome": "<AssinantesTermoConstitutivoV1EmissorV1nome>",
    "AssinantesTermoConstitutivoV1EmissorV1telefones": "<AssinantesTermoConstitutivoV1EmissorV1telefones>",
    "AssinantesTermoConstitutivoV1EmissorV1email": "<AssinantesTermoConstitutivoV1EmissorV1email>",
    "serieUnica": "<serieUnica>",
    "NumdaEmissao": "<numeroDaEmissao>",
    "InvestidorV1razaoSocial": "<InvestidorV1razaoSocial>",
    "InvestidorV1cnpjCpf": "<InvestidorV1cnpjCpf>",
    "InvestidorV1enderecorua": "<InvestidorV1enderecorua>",
    "InvestidorV1endereconumero": "<InvestidorV1endereconumero>",
    "InvestidorV1enderecocomplemento": "<InvestidorV1enderecocomplemento>",
    "InvestidorV1enderecobairro": "<InvestidorV1enderecobairro>",
    "InvestidorV1enderecocep": "<InvestidorV1enderecocep>",
    "InvestidorV1enderecocidade": "<InvestidorV1enderecocidade>",
    "InvestidorV1enderecoestado": "<InvestidorV1enderecoestado>",
    "InvestidorV1telefone": "<InvestidorV1telefone>",
    "dadosBancariosDoEmissorbanco": "<dadosBancariosDoEmissorbanco>",
    "dadosBancariosDoEmissorcodigo": "<dadosBancariosDoEmissorcodigo>",
    "dadosBancariosDoEmissoragencia": "<dadosBancariosDoEmissoragencia>",
    "dadosBancariosDoEmissorcontaCorrente": "<dadosBancariosDoEmissorcontaCorrente>",
    "dadosBancariosDoEmissorcontaCorrentedigito": "<dadosBancariosDoEmissorcontaCorrentedigito>"
   },
 }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Documento a partir do template WORD Copy',
      apiUrl:
          '${DfsGroup.baseUrl}documents/${uuidSafe}/makedocumentbytemplateword?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DOWNLOADDeUmDocumentoCall {
  Future<ApiCallResponse> call({
    String? uuidDocument = '',
  }) async {
    final ffApiRequestBody = '''
{
  "type": "pdf",
  "language": "pt",
  "encoding": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DOWNLOAD de um documento',
      apiUrl:
          '${DfsGroup.baseUrl}documents/${uuidDocument}/download?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.url''',
      );
  dynamic nomedodoc(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
}

class ListarTodosOsDocumentosCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar todos os documentos',
      apiUrl:
          '${DfsGroup.baseUrl}documents?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarUmDocumentoEspecficoCall {
  Future<ApiCallResponse> call({
    String? uuidDocument = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar um documento especfico',
      apiUrl:
          '${DfsGroup.baseUrl}/documents/${uuidDocument}?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End DFS Group Code

/// Start FlixSign Group Code

class FlixSignGroup {
  static String baseUrl = 'https://api.flix-sign.com';
  static Map<String, String> headers = {
    'ClientId': 'Flixsign',
  };
  static AuthLoginCall authLoginCall = AuthLoginCall();
  static CreateDocumentByHtmlCall createDocumentByHtmlCall =
      CreateDocumentByHtmlCall();
  static CreateDocumentByHtmlTesteXMLCall createDocumentByHtmlTesteXMLCall =
      CreateDocumentByHtmlTesteXMLCall();
  static CreateDocumentByHtmlleandroCall createDocumentByHtmlleandroCall =
      CreateDocumentByHtmlleandroCall();
  static CreateDocumentByHtmlOriginalCopyCall
      createDocumentByHtmlOriginalCopyCall =
      CreateDocumentByHtmlOriginalCopyCall();
  static CreateDocumentByHtmlTabelaMatCall createDocumentByHtmlTabelaMatCall =
      CreateDocumentByHtmlTabelaMatCall();
  static SendMailSignDocumentCall sendMailSignDocumentCall =
      SendMailSignDocumentCall();
  static RetornoDocCall retornoDocCall = RetornoDocCall();
  static DownloadDocCall downloadDocCall = DownloadDocCall();
}

class AuthLoginCall {
  Future<ApiCallResponse> call({
    String? bearer = 'Bearer',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "dev02@needtoken.com.br",
  "password": "dev02@N&&d"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Auth Login',
      apiUrl: '${FlixSignGroup.baseUrl}/customer/service/v1/api/Auth/Login?key',
      callType: ApiCallType.POST,
      headers: {
        'ClientId': 'Flixsign',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? bearer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.token''',
      ));
}

class CreateDocumentByHtmlCall {
  Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? razaoSocial = '',
    String? cnpjEmissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? emissorRua = '',
    String? emissorNumero = '',
    String? emissorBairro = '',
    String? emissorCidade = '',
    String? emissorUF = '',
    String? emissorCep = '',
    String? emissorTelefone = '',
    String? emissorEmail = '',
    String? investidorRazaoSocial = '',
    String? investidorCnpj = '',
    String? investidorRua = '',
    String? investidorBairro = '',
    String? investidorCidade = '',
    String? investidorUF = '',
    String? investidorTelefone = '',
    String? investidorComplemento = '',
    String? investidorCep = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
    String? emissorComplemento = '',
    String? investidorNumero = '',
    String? dadosFinanceirosV1convencao = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? vencimentoDa1aParcela = '',
    String? pagamento = '',
    String? taxaJuros = '',
    String? data = '',
    String? amortizacao = '',
    String? parcela = '',
    String? indexador = '',
    String? investidorEmail = '',
    String? emissorDigitoConta = '',
    String? convencao = '',
    String? custodianteRazaoSocial = '',
    String? custodianteEmail = '',
    String? custodianteCnpj = '',
    String? custodianteTelCelular = '',
    String? custodianteCidade = '',
    String? custodianteRua = '',
    String? custodianteUF = '',
    String? custodianteNumero = '',
    String? custodianteCep = '',
    String? custodianteBairro = '',
    String? indexadorPosFixado = '',
    String? jurosPeriocidade = '',
    String? anexarPlanilha = '',
    String? taxaDeJuros = '',
    String? valorDaEmissora = '',
    String? valroDepositaria = '',
    String? valorEscriturador = '',
    String? emailResponsavelEmissor = '',
    String? emailResponsavelCustodiante = '',
    String? emailResponsavelEscriturador = '',
    String? emailResponsavelInvestidor = '',
    String? nomeResponsavelCustodiante = '',
    String? nomeResponsavelEscriturador = '',
    String? nomeResponsavelEmissor = '',
    String? nomeResponsavelInvestidor = '',
  }) async {
    final ffApiRequestBody = '''
{
"empresaId": 36,
"fileName": "Nota Comercial",
"html": "<html>

<head>
    <title>Termo de Cessão - Nº 01</title>
</head>

<body>
    <div style='text-align: center; padding: 10px 0; margin: 0 auto; width: 100%;'>
        <h3 style='text-align: left;'>TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDaEmissao} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO
            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}.
        </h3>

        <table border='1' style='width: 100%;'>
            <tr>
                <td>
                    <span style='font-weight: 600;'>Razão Social: </span>
                    ${razaoSocial}
                </td>
                <td>
                    <span style='font-weight: 600;'>CNPJ/ME: </span>
                    ${cnpjEmissor}
                </td>
            </tr>
        </table>

        <p style='text-align: left; font-size: 16px;'>
            A Emissão e a celebração deste Termo Constitutivo de Nota Comercial da NumdaEmissao Emissão de Notas Comerciais, em Série Única, para
            Colocação Privada, da ${razaoSocial}. (“Termo Constitutivo”) são realizadas com base nas deliberações dos
            administradores da Emissora, conforme previsto no Parágrafo único, artigo 46 da Lei nº14.195, de 26 de agosto de 2021 (“Lei 14.195”) e nos
            documentos societários da Emissora.
        </p>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            I. RESUMO DA EMISSÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Número da Emissão: </span><br>
                        ${numeroDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Série: </span> <br>
                        0001
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Emissão: </span> <br>
                        São Paulo/SP
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Emissão: </span> <br>
                        ${dataDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Vencimento: </span> <br>
                        ${dataDoVencimento}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Total da Emissão: </span> <br>
                       R\$ ${valorTotalDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Nominal Unitário: </span> <br>
                        R\$ 1,00
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Quantidade: </span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Conversibilidade: </span><br>
                        Simples, ou seja, não conversíveis em quotas da Emissora.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custo da Emissão: </span><br>
                        Custo da Emissão R\$ ${custoDaEmissao}
                        a ser pago pelo Titular em nome do Emissor ao Escriturador, Custodiante e Agente Liquidante na conta corrente abaixo indicada,
                        na data da liquidação das Notas Comerciais. <br>
                        <span style='font-weight: 600;'>Banco:</span> <br>
                        <span style='font-weight: 600;'>Agência: </span> <br>
                        <span style='font-weight: 600;'>Conta Corrente: </span>
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Garantia(s): </span><br>
                        Não haverá quaiquer tipos de garantias.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Moeda da Emissão: </span><br>
                        Reais (R\$)
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Repactuação: </span><br>
Não será contratada agência de classificação de risco
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Classificação de Risco: </span><br>
                         Não será contratada agência de classificação de risco da Emissora ou das Notas Comerciais no âmbito da Oferta Restrita.
                    </td>
                    <td colspan='2'>
                        <span style='font-weight: 600;'>Tipo de Oferta: </span><br>
                        Privada, isto é: não será realizada oferta pública de valores mobiliários para fins de colocação das Notas Comerciais
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Pagamento: </span><br>
                        São Paulo/SP, em conta do Titular da Nota Comercial, abaixo identificada. <br><br>
                        <span style='font-weight: 600;'>Nº do Banco:</span>${dadosBancariosDoEmissorcodigo}<br>
                        <span style='font-weight: 600;'>Banco: </span>${dadosBancariosDoEmissorbanco}<br>
                        <span style='font-weight: 600;'>Agência: </span>${dadosBancariosDoEmissoragencia}<br>
                        <span style='font-weight: 600;'>Conta: </span>${dadosBancariosDoEmissorcontaCorrente}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Juros Remuneratórios: </span><br>
                        ${indexadorPosFixado} + ${taxaDeJuros}% ao ${jurosPeriocidade}, exponencial e base ${convencao} dias, sendo certo que a rentabilidade se inicia apenas após a efetiva
                        integralização.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Datas de Pagamento dos Juros Remuneratórios: </span><br>
                        ${jurosPeriocidade}, conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Pagamento dos Valor Nominal Unitário: </span><br>
                        Mensal, conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.

                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Facultativo Total e Oferta de Resgate Antecipado: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse
                        valor será prerrogativa do credor de acordo com as condições de mercado.  
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Compulsório Total: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, as Notas Comerciais deverão ser resgatadas integralmente caso seja decretado o Vencimento Antecipado das Notas
                        Comerciais, conforme abaixo definido.
                    </td>
                </tr>

            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            II. PARTICIPANTES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Escriturador: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        15.489.568/0001-95
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custodiante: </span> <br>
                        ${custodianteRazaoSocial}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        ${custodianteCnpj}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            III. COMUNICAÇÕES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para a Emissora: </span> <br>
                       ${emissorRua}, ${emissorNumero} <br>
                       ${emissorBairro}, ${emissorCidade}, ${emissorUF} <br>
                        CEP:${emissorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        ${razaoSocial} <br>
                        Telefone: ${emissorTelefone} <br>
                        E-mail: ${emissorEmail}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Escriturador: </span> <br>
                        Rua Joaquim Floriano, 1120 <br>
                        Bairro Itaim Bibi, Cidade de São Paulo <br>
                        CEP: 04534-004
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        Isaltino Andrade <br>
                        Telefone: (11) 3198-5151 <br>
                        E-mail: escrituracao@intrainvestimentos.com.br
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Custodiante: </span> <br>
                        ${custodianteRua}, ${custodianteNumero} <br>
                        ${custodianteBairro}, ${custodianteCidade}, ${custodianteUF} <br>
                        CEP: ${custodianteCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a): </span> <br>
                         ${custodianteRazaoSocial}<br>
                        Telefone: ${custodianteTelCelular} <br>
                        E-mail: ${custodianteEmail}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        As notificações, instruções e comunicações serão consideradas entregues quando recebidas sob protocolo ou com “aviso de
                        recebimento” expedido pela Empresa Brasileira de Correios, ou por telegrama nos endereços acima. As comunicações enviadas por
                        correio eletrônico serão consideradas recebidas na data de seu envio, desde que seu recebimento seja confirmado por meio de
                        recibo emitido pelo remetente (recibo emitido pela máquina utilizada pelo remetente). A mudança de qualquer dos endereços
                        acima deverá ser imediatamente comunicada às demais Partes pela Parte que tiver seu endereço alterado.
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div style='text-align: left; padding: 10px 0; margin: 0 auto; width: 100%;'>

        <h4>1 OBJETO </h4>
        <p>
            O presente Termo Constitutivo tem por objeto a ${numeroDaEmissao} emissão de notas comerciais, em serie Unica 0001, para colocação privada, da Emissora
            (“Emissão” e “Notas Comerciais”, respectivamente), representativas de promessa de pagamento em dinheiro, de acordo com as características,
            termos e condições estabelecidos neste Termo Constitutivo, nos termos da Lei nº 6.385, de 7 de dezembro de 1976, conforme alterada e da
            Lei 14.195.

        </p>

        <h4>2 CONDIÇÕES PRECEDENTES </h4>
        <p>
            A Emissão, está condicionada, nos termos do artigo 125 da Lei 10.406, de 10 de janeiro de 2002, conforme alterada, à verificação do
            cumprimento dos seguintes atos (“Condições Precedentes”):
            <br>
            <br>
            a. perfeita formalização, pela Emissora e demais partes signatárias, do Termo Constitutivo e do Boletim de Subscrição (conjuntamente, os
            “Documentos da Operação”), bem como a verificação dos poderes dos representantes dessas partes e eventuais aprovações societárias
            necessárias à celebração desses documentos; e
            <br>
            <br>
            b. recebimento, pela Emissora, dos Boletins de Subscrição devidamente formalizados, cujo modelo segue anexo a este Termo Constituivo no
            Anexo I.
            <br>
        </p>

        <h4>3 VENCIMENTO ANTECIPADO</h4>
        <p>
            Observado o disposto a seguir, o titular das Notas Comerciais poderá declarar antecipadamente vencidas todas as obrigações constantes
            deste Termo Constitutivo (“Vencimento Antecipado”) na ocorrência de qualquer uma das hipóteses abaixo:
            <br>
            <br>
            a. Se ocorrer inadimplemento de qualquer obrigação assumida pela Emissora em consonância com as cláusulas e condições aqui estabelecidas,
            principalmente no que tange ao pagamento das parcelas devidas em decorrências da celebração deste Termo Constitutivo e emissão das Notas
            Comerciais;
            <br>
            <br>
            b. Se for comprovada a falsidade de qualquer declaração, informação ou documento que houver sido respectivamente firmada, prestada ou
            entregue pela Emissora;
            <br>
            <br>
            c. Se a Emissora sofrer quaisquer medidas judiciais ou extrajudiciais, que por qualquer forma, possam afetar negativamente os créditos das
            Notas Comerciais;
            <br>
            <br>
            d. Se, sem o expresso consentimento dos credores das Notas Comerciais ocorrer a transferência a terceiros dos direitos e obrigações da
            Emissora previstos neste Termo Constitutivo; e
            <br>
            <br>
            e. Se ocorrer a transferência a terceiros dos direitos e obrigações da Emissora, previstos neste Termo Constitutivo.
            <br>
        </p>

        <h4>4 DAS DECLARAÇÕES </h4>
        <p>
            A Emissora declara e garante que:
            <br>
            <br>
            a. Possui plena capacidade e legitimidade para celebrar o presente Termo Constitutivo, realizar todas as operações e cumprir todas as
            obrigações assumidas tendo tomado todas as medidas de natureza societária, conforme aplicável, e outras eventualmente necessárias para
            autorizar a sua celebração, implementação e cumprimento de todas as obrigações constituídas;
            <br>
            <br>
            b. A celebração deste Termo Constitutivo e o cumprimento das obrigações nele dispostos: (a) não violam qualquer disposição contida nos
            seus documentos societários, conforme aplicável; (b) não violam qualquer lei, regulamento, decisão judicial, administrativa ou arbitral,
            aos quais a respectiva parte esteja vinculada; (c) não exigem qualquer consentimento ação ou autorização, prévia ou posterior, de
            terceiros;
            <br>
            <br>
            c. Este Termo Constitutivo é validamente celebrado e constitui obrigação legal, válida, vinculante e exequível, de acordo com os seus
            termos;
            <br>
            <br>
            d. Está apta a cumprir as obrigações ora previstas neste Termo Constitutivo e agirá em relação às mesmas de boa-fé e com lealdade;
            <br>
            <br>
            e. Não se encontra em estado de necessidade ou sob coação para celebrar este Termo Constitutivo e/ou quaisquer contratos e compromissos a
            ela relacionados e acessórios; e
            <br>
            <br>
            f. É devidamente estruturada, qualificada e capacitada para entender a estrutura financeira e jurídica objeto deste Termo Constitutivo.
            <br>
        </p>

        <h4>5 DO ATRASO NO PAGAMENTO E ENCARGOS MORATÓRIOS </h4>
        <p>
            Na hipótese de inadimplemento ou mora dos valores devidos no âmbito deste Termo Constitutivo, a Emissora estará obrigada a pagar ao
            titular, cumulativamente, além da quantia correspondente à dívida em aberto, os seguintes encargos:
            <br>
            <br>
            a. Juros remuneratórios nos mesmos percentuais das taxas constantes neste Termo Constitutivo, calculados a partir do vencimento das
            parcelas em aberto até a data do efetivo pagamento;
            <br>
            <br>
            b. Juros de mora à razão de 1% a.m. (um por cento ao mês), calculados a partir do vencimento das parcelas em aberto até a data do efetivo
            pagamento pela Emissora;
            <br>
            <br>
            c. Multa contratual, de natureza não compensatória, de 2% (dois por cento) incidente sobre o montante total atualizado (incluindo juros
            remuneratórios e juros de mora) do valor devido e não pago; e
            <br>
            <br>
            d. Na hipótese do Titular vir a ser compelido a recorrer a meios administrativos ou judiciais para receber os valores devidos no âmbito
            deste Termo Constitutivo, as despesas de cobrança administrativa, limitadas a 10% (dez por cento) sobre o valor do saldo devedor deste
            Termo Constitutivo e, havendo procedimento judicial, custas processuais e honorários advocatícios, estes fixados judicialmente.
            <br>
            <br>
            e. Caso qualquer data de vencimento referente aos pagamentos da Nota Comercial caia em um fim de semana ou feriado nacional, conforme
            tabela Anbima, o prazo para liquidação será prorrogado automaticamente para o primeiro dia útil subsequente, sem que incida sobre os
            valores a pagar quaisquer acréscimos de caráter remuneratório ou moratório.
            <br>
        </p>

        <h4>6 DISPOSIÇÕES GERAIS</h4>
        <p>
            <u style='font-weight: 600;'>Renúncia</u> <br>
            Não se presume a renúncia a qualquer dos direitos decorrentes da Nota Comercial. Desta forma, nenhum atraso, omissão ou liberalidade no
            exercício de qualquer direito, faculdade ou prerrogativa que caiba ao Titular, em razão de qualquer inadimplemento da Emissora,
            prejudicará o exercício de tais direitos, faculdades ou remédios, ou será interpretado como constituindo uma renúncia aos mesmos ou
            concordância com tal inadimplemento, nem constituirá novação ou modificação de quaisquer outras obrigações assumidas pela Emissora neste
            instrumento, ou precedente no tocante a qualquer outro inadimplemento ou atraso.
            <br>
            <br>
            <u style='font-weight: 600;'>Direito ao Recebimento dos Pagamentos </u> <br>
            Terá direito ao recebimento dos valores devidos em relação às Notas Comerciais, seja o pagamento realizado em caráter ordinário ou
            extraordinário, os Titulares das Notas Comerciais constituídos no encerramento do dia útil imediatamente anterior à respectiva data de
            pagamento.
            <br>
            <br>
            <u style='font-weight: 600;'>Título Executivo Extrajudicial e Execução Específica </u> <br>
            Este instrumento e as Notas Comerciais constituem títulos executivos extrajudiciais, nos termos dos incisos I e III do artigo 784 do
            Código de Processo Civil, reconhecendo as Partes desde já que, independentemente de quaisquer outras medidas cabíveis, as obrigações
            assumidas nos termos deste instrumento e com relação às Notas Comerciais estão sujeitas à execução específica, submetendo-se às
            disposições dos artigos 815 e seguintes do Código de Processo Civil, sem prejuízo do direito de declarar o vencimento antecipado das Notas
            Comerciais, nos termos deste instrumento.
            <br>
            <br>
            <u style='font-weight: 600;'>Da Outorga de Poderes </u> <br>
            A Emissora, neste ato, em caráter irrevogável e irretratável, autoriza a central depositária de valores mobiliários a cadastrar o presente
            Termo Constitutivo na Plataforma IMF Digital, para fins de cumprimento do cadastro de instrumento financeiro, bem como criar eventuais
            usuários, se e conforme solicitados de maneira formalizada, para acesso a citada plataforma, em consonância aos seus normativos, bem como
            representá-la perante os demais prestadores de serviço envolvidos na Emissão, inclusive contratá-los em seu nome, desde que a
            obrigatoriedade de pagamento seja do grupo Laqus.
            <br>
            <br>
            <u style='font-weight: 600;'>Irrevogabilidade</u> <br>
            A Nota Comercial e o presente instrumento são celebrados em caráter irrevogável e irretratável, obrigando as partes e seus sucessores a
            qualquer título.
            <br>
            <br>
            <u style='font-weight: 600;'>Cômputo do Prazo </u> <br>
            Exceto se de outra forma especificamente disposto neste instrumento, os prazos estabelecidos no presente instrumento serão computados de
            acordo com a regra prescrita no artigo 132 do Código Civil, sendo excluído o dia do começo e incluído o do vencimento.
            <br>
            <br>
            <u style='font-weight: 600;'>Assinatura Eletrônica </u> <br>
            Para os fins do artigo 10, parágrafo 2º, da Medida Provisória nº 2.200-2, de 24 de agosto de 2001, as Partes acordam e aceitam que este
            instrumento e qualquer aditamento podem ser assinados eletronicamente por meio de Docusign, com certificados digitais emitidos pela
            ICP-Brasil, e tais assinaturas eletrônicas serão legítimas e suficientes para comprovar (i) a identidade de cada representante legal, (ii)
            a vontade de cada Parte em firmar este instrumento e qualquer aditamento, e (iii) a integridade deste instrumento e qualquer alteração.
            <br>
            <br>
            <u style='font-weight: 600;'>Boa-fé e Equidade </u> <br>
            As Partes declaram, mútua e expressamente, que este instrumento foi celebrado respeitando-se os princípios de probidade e de boa-fé, por
            livre, consciente e firme manifestação de vontade das Partes e em perfeita relação de equidade.
            <br>
            <br>
            <u style='font-weight: 600;'>Lei Aplicável </u> <br>
            Este instrumento é regido pelas Leis da República Federativa do Brasil.
            <br>
            <br>
            <u style='font-weight: 600;'>Foro</u> <br>
            Fica eleito o foro da Comarca da Cidade de São Paulo, Estado de São Paulo, para dirimir quaisquer dúvidas ou controvérsias oriundas deste
            instrumento, com renúncia a qualquer outro, por mais privilegiado que seja.
            <br>
        </p>

        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>
        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            PÁGINA DE ASSINATURAS DO TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDeSerie}
            EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
        </p>

        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>${razaoSocial}</span> <br>
            <span style='font-style: italic;'>Na qualidade de Emissora</span>
        </p>
        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E
                VALORES MOBILIARIOS LTDA
            </span> <br>
            <span style='font-style: italic;'>Na qualidade de Escriturador
            </span>
        </p>

        <p style='text-align: left; font-weight: 700; padding-top: 100px;'>TESTEMUNHAS: </p>
        <div style='display: flex; justify-content: space-around;'>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
        </div>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            ANEXO I – MODELO DE BOLETIM DE SUBSCRIÇÃO DAS NOTAS COMERCIAIS
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>BOLETIM DE SUBSCRIÇÃO DA ${numeroDeSerie} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE ${numeroDeSerie}, PARA COLOCAÇÃO
                            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
                        </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>CARACTERÍSTICAS DA EMISSÃO </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        Emissão, pela <span style='font-weight: 600;'>${razaoSocial}</span>,
                        pessoa jurídica situada na Rua ${emissorRua}, ${emissorNumero}, Bairro ${emissorBairro}, Cidade de ${emissorCidade}, SP, CEP: 08150166, inscrita no CNPJ/ME sob o nº
                        ${cnpjEmissor} ('Companhia'), de ${valorTotalDaEmissao} notas comerciais, com valor nominal unitário de R\$ 1,00 e vencimento em ${dataDoVencimento},
                        da sua 80551 emissão ('Notas Comerciais' e 'Emissão').
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>QUALIFICAÇÃO DO SUBSCRITOR </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nome / Razão Social:</span> <br>
                        ${investidorRazaoSocial}
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        ${investidorCnpj}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Endereço:</span> <br>
                        ${investidorRua}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº:</span>
                        ${investidorNumero}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Complemento: </span> <br>
${emissorComplemento}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Bairro: </span> <br>
                        ${investidorBairro}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CEP:</span> <br>
                        ${investidorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Cidade: </span> <br>
                       ${investidorCidade}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>U.F.:</span>
                        ${investidorUF}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>País: </span> <br>
                        Brasil
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Telefone: </span> <br>
                        ${investidorTelefone}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>NOTAS COMERCIAIS SUBSCRITAS: </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>QUANTIDADE:</span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>PREÇO TOTAL UNITÁRIO:</span> <br>
                        R\$ 1,00
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>VALOR EM R\$: </span> <br>
                        R\$ ${custoDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        O Preço Total Unitário será mantido em cada data de integralização, caso distintas. A rentabilidade se inicia apenas após a
                        efetiva integralização.
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            FORMA SUBSCRIÇÃO E INTEGRALIZAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>MEIO DE INTEGRALIZAÇÃO: </span> <br><br>
                        [X] Transferência Eletrônica Disponível (TED) ou PIX, na conta bancária da Emissora, abaixo identificada. <br>
                        [ ] Depositário Central (Laqus) <br>
                        [ ] Dação em Pagamento
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>DATA DE INTEGRALIZAÇÃO: </span> <br><br>
                        A efetiva integralização deverá ser realizada em até 30 (trinta) dias corridos, contados da data de assinatura do presente
                        Boletim de Subscrição
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DA EMISSORA
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        ${dadosBancariosDoEmissorbanco}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        ${dadosBancariosDoEmissorcodigo}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        ${dadosBancariosDoEmissoragencia}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        ${dadosBancariosDoEmissorcontaCorrente}-${emissorDigitoConta}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorDaEmissora}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DO ESCRITURADOR, CUSTODIANTE E AGENTE DE LIQUIDAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        Santander
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        033
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        2271
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        13065375-2
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorEscriturador}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        Declaro, para todos os fins, que estou de acordo com as condições expressas no presente boletim, bem como declaro ter obtido
                        exemplar do Termo Constitutivo.

                        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>

                        <p style='text-align: center; padding-top: 80px;'>
                            <u>________________________________________________________________________________________</u> <br>
                            <span style='font-style: italic;'>Assinatura do Subscritor ou Representante Legal</span>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    ${anexarPlanilha}
                </tr>
            </tbody>
        </table>

    </div>
    <!-- Outras tabelas com estilos semelhantes -->

<table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        <teste1><br><br>
                        outroteste
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        033
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        2271
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        13065375-2
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ 
                    </td>
                </tr>
            </tbody>
        </table>
</body>

</html>",

"listSignatory": [
{
"type": 8,
"name": "${razaoSocial}",
"email": "${emissorEmail}",
"document": "${cnpjEmissor}",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1,
"documentType": 2
},
{
"type": 9,
"name": "${investidorRazaoSocial}",
"email": "${investidorEmail}",
"document": "${investidorCnpj}",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1,
"documentType": 2
},
{
"type": 9,
"name": "${custodianteRazaoSocial}",
"email": "${custodianteEmail}",
"document": "${custodianteCnpj}",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1,
"documentType": 2
},
{
"type": 9,
"name": "INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS
LTDA",
"email": "",
"document": "15.489.568/0001-95",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1,
"documentType": 2
},
{
"type": 0,
"name": "${nomeResponsavelEmissor}",
"email": "${emailResponsavelEmissor}",
"document": "15.489.568/0001-95",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1,
"documentType": 2
}
]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateDocumentByHtml',
      apiUrl:
          '${FlixSignGroup.baseUrl}/document/service/v1/api/Document/CreateDocumentByHtml',
      callType: ApiCallType.POST,
      headers: {
        'ClientId': 'Flixsign',
        'Authorization':
            'Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJncm91cHNpZCI6IkZsaXhzaWduIiwibmFtZWlkIjoiNzYiLCJ1bmlxdWVfbmFtZSI6IkRldiAwMiIsImVtYWlsIjoiZGV2MDJAbmVlZHRva2VuLmNvbS5iciIsIklzUm9vdCI6IkZhbHNlIiwiQ29udGFJZCI6ImNiOGUzNGJmLTIzMTEtNDEzZC03ODYwLTA4ZGJlYWE0Y2YwMyIsIklzQWRtaW4iOiJGYWxzZSIsIklzT3BlcmF0b3IiOiJGYWxzZSIsIlR5cGUiOiIxIiwiQ3VzdG9tZXJJZCI6IjM2IiwiU3VwcGxpZXJJZCI6IjAiLCJCYW5rSWQiOiIwIiwiSXNVc2VUZXJtIjoiVHJ1ZSIsIlVzZXJEb2N1bWVudCI6IjQ3LjA1My4yMTkvMDAwMS0xMiIsIkN1c3RvbWVyIjpbIkxpc3QiLCJHZXQiXSwiRG9jdW1lbnQiOlsiTGlzdCIsIkdldCIsIkRlbGV0ZSIsIlNhdmUiXSwibmJmIjoxNzAyNjczNzAxLCJleHAiOjE3MDI3MDk3MDEsImlhdCI6MTcwMjY3MzcwMX0.L5f4Ar-zsaDFYXhWFtDUMEd-OWO4WL-aDxVOJhANeYEJWtGCr0MRS3wTqC4HrrTsQYyFqYNTsz7U75Yipyo1aA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? fileHash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class CreateDocumentByHtmlTesteXMLCall {
  Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? razaoSocial = '',
    String? cnpjEmissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? emissorRua = '',
    String? emissorNumero = '',
    String? emissorBairro = '',
    String? emissorCidade = '',
    String? emissorUF = '',
    String? emissorCep = '',
    String? emissorTelefone = '',
    String? emissorEmail = '',
    String? investidorRazaoSocial = '',
    String? investidorCnpj = '',
    String? investidorRua = '',
    String? investidorBairro = '',
    String? investidorCidade = '',
    String? investidorUF = '',
    String? investidorTelefone = '',
    String? investidorComplemento = '',
    String? investidorCep = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
    String? emissorComplemento = '',
    String? investidorNumero = '',
    String? dadosFinanceirosV1convencao = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? vencimentoDa1aParcela = '',
    String? pagamento = '',
    String? taxaJuros = '',
    String? data = '',
    String? amortizacao = '',
    String? parcela = '',
    String? indexador = '',
    String? investidorEmail = '',
    String? emissorDigitoConta = '',
    String? convencao = '',
    String? custodianteRazaoSocial = '',
    String? custodianteEmail = '',
    String? custodianteCnpj = '',
    String? custodianteTelCelular = '',
    String? custodianteCidade = '',
    String? custodianteRua = '',
    String? custodianteUF = '',
    String? custodianteNumero = '',
    String? custodianteCep = '',
    String? custodianteBairro = '',
  }) async {
    final ffApiRequestBody = '''
{
"empresaId": 36,
"fileName": "Nota Comercial",
"html": "<html>

<head>
    <title>Termo de Cessão - Nº 01</title>
</head>

<body>
    <div style='text-align: center; padding: 10px 0; margin: 0 auto; width: 100%;'>
        <h3 style='text-align: left;'>TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDaEmissao} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO
            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}.
        </h3>

        <table border='1' style='width: 100%;'>
            <tr>
                <td>
                    <span style='font-weight: 600;'>Razão Social: </span>
                    ${razaoSocial}
                </td>
                <td>
                    <span style='font-weight: 600;'>CNPJ/ME: </span>
                    ${cnpjEmissor}
                </td>
            </tr>
        </table>

        <p style='text-align: left; font-size: 16px;'>
            A Emissão e a celebração deste Termo Constitutivo de Nota Comercial da NumdaEmissao Emissão de Notas Comerciais, em Série Única, para
            Colocação Privada, da ${razaoSocial}. (“Termo Constitutivo”) são realizadas com base nas deliberações dos
            administradores da Emissora, conforme previsto no Parágrafo único, artigo 46 da Lei nº14.195, de 26 de agosto de 2021 (“Lei 14.195”) e nos
            documentos societários da Emissora.
        </p>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            I. RESUMO DA EMISSÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Número da Emissão: </span><br>
                        ${numeroDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Série: </span> <br>
                        0001
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Emissão: </span> <br>
                        São Paulo/SP
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Emissão: </span> <br>
                        ${dataDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Vencimento: </span> <br>
                        ${dataDoVencimento}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Total da Emissão: </span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Nominal Unitário: </span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Quantidade: </span> <br>
                        ${quantidade}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Conversibilidade: </span><br>
                        Simples, ou seja, não conversíveis em quotas da Emissora.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custo da Emissão: </span><br>
                        Custo da Emissão

                        a ser pago pelo Titular em nome do Emissor ao Escriturador, Custodiante e Agente Liquidante na conta corrente abaixo indicada,
                        na data da liquidação das Notas Comerciais. <br>
                        <span style='font-weight: 600;'>Banco:</span> <br>
                        <span style='font-weight: 600;'>Agência: </span> <br>
                        <span style='font-weight: 600;'>Conta Corrente: </span>
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Garantia(s): </span><br>
                        Não haverá quaiquer tipos de garantias.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Moeda da Emissão: </span><br>
                        Reais (R\$)
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Repactuação: </span><br>
Não será contratada agência de classificação de risco
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Classificação de Risco: </span><br>
                    </td>
                    <td colspan='2'>
                        <span style='font-weight: 600;'>Tipo de Oferta: </span><br>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Pagamento: </span><br>
                        São Paulo/SP, em conta do Titular da Nota Comercial, abaixo identificada. <br><br>
                        <span style='font-weight: 600;'>Nº do Banco:</span>${dadosBancariosDoEmissorcodigo}<br>
                        <span style='font-weight: 600;'>Banco: </span>${dadosBancariosDoEmissorbanco}<br>
                        <span style='font-weight: 600;'>Agência: </span>${dadosBancariosDoEmissoragencia}<br>
                        <span style='font-weight: 600;'>Conta: </span>${dadosBancariosDoEmissorcontaCorrente}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Juros Remuneratórios: </span><br>
                        ${valorDosJurosRemunetorios} + ${indexador} do Pre, exponencial e base ${convencao}, sendo certo que a rentabilidade se inicia apenas após a efetiva
                        integralização.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Datas de Pagamento dos Juros Remuneratórios: </span><br>
                        , conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Pagamento dos Valor Nominal Unitário: </span><br>
                        Mensal, conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.

                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Facultativo Total e Oferta de Resgate Antecipado: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse
                        valor será prerrogativa do credor de acordo com as condições de mercado.  
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Compulsório Total: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, as Notas Comerciais deverão ser resgatadas integralmente caso seja decretado o Vencimento Antecipado das Notas
                        Comerciais, conforme abaixo definido.
                    </td>
                </tr>

            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            II. PARTICIPANTES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Escriturador: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        15.489.568/0001-95
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custodiante: </span> <br>
                        ${custodianteRazaoSocial}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        ${custodianteCnpj}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            III. COMUNICAÇÕES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para a Emissora: </span> <br>
                       ${emissorRua}, ${emissorNumero} <br>
                       ${emissorBairro}, ${emissorCidade}, ${emissorUF} <br>
                        CEP:${emissorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        ${razaoSocial} <br>
                        Telefone: ${emissorTelefone} <br>
                        E-mail: ${emissorEmail}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Escriturador: </span> <br>
                        Rua Joaquim Floriano, 1120 <br>
                        Bairro Itaim Bibi, Cidade de São Paulo <br>
                        CEP: 04534-004
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        Isaltino Andrade <br>
                        Telefone: (11) 3198-5151 <br>
                        E-mail: escrituracao@intrainvestimentos.com.br
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Custodiante: </span> <br>
                        ${custodianteRua}, ${custodianteNumero} <br>
                        ${custodianteBairro}, ${custodianteCidade}, ${custodianteUF} <br>
                        CEP: ${custodianteCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a): </span> <br>
                         ${custodianteRazaoSocial}<br>
                        Telefone: ${custodianteTelCelular} <br>
                        E-mail: ${custodianteEmail}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        As notificações, instruções e comunicações serão consideradas entregues quando recebidas sob protocolo ou com “aviso de
                        recebimento” expedido pela Empresa Brasileira de Correios, ou por telegrama nos endereços acima. As comunicações enviadas por
                        correio eletrônico serão consideradas recebidas na data de seu envio, desde que seu recebimento seja confirmado por meio de
                        recibo emitido pelo remetente (recibo emitido pela máquina utilizada pelo remetente). A mudança de qualquer dos endereços
                        acima deverá ser imediatamente comunicada às demais Partes pela Parte que tiver seu endereço alterado.
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div style='text-align: left; padding: 10px 0; margin: 0 auto; width: 100%;'>

        <h4>1 OBJETO </h4>
        <p>
            O presente Termo Constitutivo tem por objeto a ${numeroDaEmissao} emissão de notas comerciais, em serie Unica 0001, para colocação privada, da Emissora
            (“Emissão” e “Notas Comerciais”, respectivamente), representativas de promessa de pagamento em dinheiro, de acordo com as características,
            termos e condições estabelecidos neste Termo Constitutivo, nos termos da Lei nº 6.385, de 7 de dezembro de 1976, conforme alterada e da
            Lei 14.195.

        </p>

        <h4>2 CONDIÇÕES PRECEDENTES </h4>
        <p>
            A Emissão, está condicionada, nos termos do artigo 125 da Lei 10.406, de 10 de janeiro de 2002, conforme alterada, à verificação do
            cumprimento dos seguintes atos (“Condições Precedentes”):
            <br>
            <br>
            a. perfeita formalização, pela Emissora e demais partes signatárias, do Termo Constitutivo e do Boletim de Subscrição (conjuntamente, os
            “Documentos da Operação”), bem como a verificação dos poderes dos representantes dessas partes e eventuais aprovações societárias
            necessárias à celebração desses documentos; e
            <br>
            <br>
            b. recebimento, pela Emissora, dos Boletins de Subscrição devidamente formalizados, cujo modelo segue anexo a este Termo Constituivo no
            Anexo I.
            <br>
        </p>

        <h4>3 VENCIMENTO ANTECIPADO</h4>
        <p>
            Observado o disposto a seguir, o titular das Notas Comerciais poderá declarar antecipadamente vencidas todas as obrigações constantes
            deste Termo Constitutivo (“Vencimento Antecipado”) na ocorrência de qualquer uma das hipóteses abaixo:
            <br>
            <br>
            a. Se ocorrer inadimplemento de qualquer obrigação assumida pela Emissora em consonância com as cláusulas e condições aqui estabelecidas,
            principalmente no que tange ao pagamento das parcelas devidas em decorrências da celebração deste Termo Constitutivo e emissão das Notas
            Comerciais;
            <br>
            <br>
            b. Se for comprovada a falsidade de qualquer declaração, informação ou documento que houver sido respectivamente firmada, prestada ou
            entregue pela Emissora;
            <br>
            <br>
            c. Se a Emissora sofrer quaisquer medidas judiciais ou extrajudiciais, que por qualquer forma, possam afetar negativamente os créditos das
            Notas Comerciais;
            <br>
            <br>
            d. Se, sem o expresso consentimento dos credores das Notas Comerciais ocorrer a transferência a terceiros dos direitos e obrigações da
            Emissora previstos neste Termo Constitutivo; e
            <br>
            <br>
            e. Se ocorrer a transferência a terceiros dos direitos e obrigações da Emissora, previstos neste Termo Constitutivo.
            <br>
        </p>

        <h4>4 DAS DECLARAÇÕES </h4>
        <p>
            A Emissora declara e garante que:
            <br>
            <br>
            a. Possui plena capacidade e legitimidade para celebrar o presente Termo Constitutivo, realizar todas as operações e cumprir todas as
            obrigações assumidas tendo tomado todas as medidas de natureza societária, conforme aplicável, e outras eventualmente necessárias para
            autorizar a sua celebração, implementação e cumprimento de todas as obrigações constituídas;
            <br>
            <br>
            b. A celebração deste Termo Constitutivo e o cumprimento das obrigações nele dispostos: (a) não violam qualquer disposição contida nos
            seus documentos societários, conforme aplicável; (b) não violam qualquer lei, regulamento, decisão judicial, administrativa ou arbitral,
            aos quais a respectiva parte esteja vinculada; (c) não exigem qualquer consentimento ação ou autorização, prévia ou posterior, de
            terceiros;
            <br>
            <br>
            c. Este Termo Constitutivo é validamente celebrado e constitui obrigação legal, válida, vinculante e exequível, de acordo com os seus
            termos;
            <br>
            <br>
            d. Está apta a cumprir as obrigações ora previstas neste Termo Constitutivo e agirá em relação às mesmas de boa-fé e com lealdade;
            <br>
            <br>
            e. Não se encontra em estado de necessidade ou sob coação para celebrar este Termo Constitutivo e/ou quaisquer contratos e compromissos a
            ela relacionados e acessórios; e
            <br>
            <br>
            f. É devidamente estruturada, qualificada e capacitada para entender a estrutura financeira e jurídica objeto deste Termo Constitutivo.
            <br>
        </p>

        <h4>5 DO ATRASO NO PAGAMENTO E ENCARGOS MORATÓRIOS </h4>
        <p>
            Na hipótese de inadimplemento ou mora dos valores devidos no âmbito deste Termo Constitutivo, a Emissora estará obrigada a pagar ao
            titular, cumulativamente, além da quantia correspondente à dívida em aberto, os seguintes encargos:
            <br>
            <br>
            a. Juros remuneratórios nos mesmos percentuais das taxas constantes neste Termo Constitutivo, calculados a partir do vencimento das
            parcelas em aberto até a data do efetivo pagamento;
            <br>
            <br>
            b. Juros de mora à razão de 1% a.m. (um por cento ao mês), calculados a partir do vencimento das parcelas em aberto até a data do efetivo
            pagamento pela Emissora;
            <br>
            <br>
            c. Multa contratual, de natureza não compensatória, de 2% (dois por cento) incidente sobre o montante total atualizado (incluindo juros
            remuneratórios e juros de mora) do valor devido e não pago; e
            <br>
            <br>
            d. Na hipótese do Titular vir a ser compelido a recorrer a meios administrativos ou judiciais para receber os valores devidos no âmbito
            deste Termo Constitutivo, as despesas de cobrança administrativa, limitadas a 10% (dez por cento) sobre o valor do saldo devedor deste
            Termo Constitutivo e, havendo procedimento judicial, custas processuais e honorários advocatícios, estes fixados judicialmente.
            <br>
            <br>
            e. Caso qualquer data de vencimento referente aos pagamentos da Nota Comercial caia em um fim de semana ou feriado nacional, conforme
            tabela Anbima, o prazo para liquidação será prorrogado automaticamente para o primeiro dia útil subsequente, sem que incida sobre os
            valores a pagar quaisquer acréscimos de caráter remuneratório ou moratório.
            <br>
        </p>

        <h4>6 DISPOSIÇÕES GERAIS</h4>
        <p>
            <u style='font-weight: 600;'>Renúncia</u> <br>
            Não se presume a renúncia a qualquer dos direitos decorrentes da Nota Comercial. Desta forma, nenhum atraso, omissão ou liberalidade no
            exercício de qualquer direito, faculdade ou prerrogativa que caiba ao Titular, em razão de qualquer inadimplemento da Emissora,
            prejudicará o exercício de tais direitos, faculdades ou remédios, ou será interpretado como constituindo uma renúncia aos mesmos ou
            concordância com tal inadimplemento, nem constituirá novação ou modificação de quaisquer outras obrigações assumidas pela Emissora neste
            instrumento, ou precedente no tocante a qualquer outro inadimplemento ou atraso.
            <br>
            <br>
            <u style='font-weight: 600;'>Direito ao Recebimento dos Pagamentos </u> <br>
            Terá direito ao recebimento dos valores devidos em relação às Notas Comerciais, seja o pagamento realizado em caráter ordinário ou
            extraordinário, os Titulares das Notas Comerciais constituídos no encerramento do dia útil imediatamente anterior à respectiva data de
            pagamento.
            <br>
            <br>
            <u style='font-weight: 600;'>Título Executivo Extrajudicial e Execução Específica </u> <br>
            Este instrumento e as Notas Comerciais constituem títulos executivos extrajudiciais, nos termos dos incisos I e III do artigo 784 do
            Código de Processo Civil, reconhecendo as Partes desde já que, independentemente de quaisquer outras medidas cabíveis, as obrigações
            assumidas nos termos deste instrumento e com relação às Notas Comerciais estão sujeitas à execução específica, submetendo-se às
            disposições dos artigos 815 e seguintes do Código de Processo Civil, sem prejuízo do direito de declarar o vencimento antecipado das Notas
            Comerciais, nos termos deste instrumento.
            <br>
            <br>
            <u style='font-weight: 600;'>Da Outorga de Poderes </u> <br>
            A Emissora, neste ato, em caráter irrevogável e irretratável, autoriza a central depositária de valores mobiliários a cadastrar o presente
            Termo Constitutivo na Plataforma IMF Digital, para fins de cumprimento do cadastro de instrumento financeiro, bem como criar eventuais
            usuários, se e conforme solicitados de maneira formalizada, para acesso a citada plataforma, em consonância aos seus normativos, bem como
            representá-la perante os demais prestadores de serviço envolvidos na Emissão, inclusive contratá-los em seu nome, desde que a
            obrigatoriedade de pagamento seja do grupo Laqus.
            <br>
            <br>
            <u style='font-weight: 600;'>Irrevogabilidade</u> <br>
            A Nota Comercial e o presente instrumento são celebrados em caráter irrevogável e irretratável, obrigando as partes e seus sucessores a
            qualquer título.
            <br>
            <br>
            <u style='font-weight: 600;'>Cômputo do Prazo </u> <br>
            Exceto se de outra forma especificamente disposto neste instrumento, os prazos estabelecidos no presente instrumento serão computados de
            acordo com a regra prescrita no artigo 132 do Código Civil, sendo excluído o dia do começo e incluído o do vencimento.
            <br>
            <br>
            <u style='font-weight: 600;'>Assinatura Eletrônica </u> <br>
            Para os fins do artigo 10, parágrafo 2º, da Medida Provisória nº 2.200-2, de 24 de agosto de 2001, as Partes acordam e aceitam que este
            instrumento e qualquer aditamento podem ser assinados eletronicamente por meio de Docusign, com certificados digitais emitidos pela
            ICP-Brasil, e tais assinaturas eletrônicas serão legítimas e suficientes para comprovar (i) a identidade de cada representante legal, (ii)
            a vontade de cada Parte em firmar este instrumento e qualquer aditamento, e (iii) a integridade deste instrumento e qualquer alteração.
            <br>
            <br>
            <u style='font-weight: 600;'>Boa-fé e Equidade </u> <br>
            As Partes declaram, mútua e expressamente, que este instrumento foi celebrado respeitando-se os princípios de probidade e de boa-fé, por
            livre, consciente e firme manifestação de vontade das Partes e em perfeita relação de equidade.
            <br>
            <br>
            <u style='font-weight: 600;'>Lei Aplicável </u> <br>
            Este instrumento é regido pelas Leis da República Federativa do Brasil.
            <br>
            <br>
            <u style='font-weight: 600;'>Foro</u> <br>
            Fica eleito o foro da Comarca da Cidade de São Paulo, Estado de São Paulo, para dirimir quaisquer dúvidas ou controvérsias oriundas deste
            instrumento, com renúncia a qualquer outro, por mais privilegiado que seja.
            <br>
        </p>

        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>
        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            PÁGINA DE ASSINATURAS DO TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDeSerie}
            EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
        </p>

        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>${razaoSocial}</span> <br>
            <span style='font-style: italic;'>Na qualidade de Emissora</span>
        </p>
        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E
                VALORES MOBILIARIOS LTDA
            </span> <br>
            <span style='font-style: italic;'>Na qualidade de Escriturador
            </span>
        </p>

        <p style='text-align: left; font-weight: 700; padding-top: 100px;'>TESTEMUNHAS: </p>
        <div style='display: flex; justify-content: space-around;'>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
        </div>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            ANEXO I – MODELO DE BOLETIM DE SUBSCRIÇÃO DAS NOTAS COMERCIAIS
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>BOLETIM DE SUBSCRIÇÃO DA ${numeroDeSerie} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE ${numeroDeSerie}, PARA COLOCAÇÃO
                            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
                        </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>CARACTERÍSTICAS DA EMISSÃO </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        Emissão, pela <span style='font-weight: 600;'>${razaoSocial}</span>,
                        pessoa jurídica situada na Rua ${emissorRua}, ${emissorNumero}, Bairro ${emissorBairro}, Cidade de ${emissorCidade}, SP, CEP: 08150166, inscrita no CNPJ/ME sob o nº
                        ${cnpjEmissor} ('Companhia'), de 12 notas comerciais, com valor nominal unitário de R\$ ${valorTotalDaEmissao} e vencimento em ${dataDoVencimento},
                        da sua 80551 emissão ('Notas Comerciais' e 'Emissão').
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>QUALIFICAÇÃO DO SUBSCRITOR </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nome / Razão Social:</span> <br>
                        ${investidorRazaoSocial}
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        ${investidorCnpj}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Endereço:</span> <br>
                        ${investidorRua}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº:</span>
                        ${investidorNumero}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Complemento: </span> <br>
${emissorComplemento}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Bairro: </span> <br>
                        ${investidorBairro}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CEP:</span> <br>
                        ${investidorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Cidade: </span> <br>
                       ${investidorCidade}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>U.F.:</span>
                        ${investidorUF}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>País: </span> <br>
                        Brasil
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Telefone: </span> <br>
                        ${investidorTelefone}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>NOTAS COMERCIAIS SUBSCRITAS: </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>QUANTIDADE:</span> <br>
                        ${quantidade}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>PREÇO TOTAL UNITÁRIO:</span> <br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>VALOR EM R\$: </span> <br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        O Preço Total Unitário será mantido em cada data de integralização, caso distintas. A rentabilidade se inicia apenas após a
                        efetiva integralização.
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            FORMA SUBSCRIÇÃO E INTEGRALIZAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>MEIO DE INTEGRALIZAÇÃO: </span> <br><br>
                        [X] Transferência Eletrônica Disponível (TED) ou PIX, na conta bancária da Emissora, abaixo identificada. <br>
                        [ ] Depositário Central (Laqus) <br>
                        [ ] Dação em Pagamento
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>DATA DE INTEGRALIZAÇÃO: </span> <br><br>
                        A efetiva integralização deverá ser realizada em até 30 (trinta) dias corridos, contados da data de assinatura do presente
                        Boletim de Subscrição
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DA EMISSORA
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        ${dadosBancariosDoEmissorbanco}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        ${dadosBancariosDoEmissorcodigo}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        ${dadosBancariosDoEmissoragencia}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        ${dadosBancariosDoEmissorcontaCorrente}-${emissorDigitoConta}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DO ESCRITURADOR, CUSTODIANTE E AGENTE DE LIQUIDAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        Santander
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        033
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        2271
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        13065375-2
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        Declaro, para todos os fins, que estou de acordo com as condições expressas no presente boletim, bem como declaro ter obtido
                        exemplar do Termo Constitutivo.

                        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>

                        <p style='text-align: center; padding-top: 80px;'>
                            <u>________________________________________________________________________________________</u> <br>
                            <span style='font-style: italic;'>Assinatura do Subscritor ou Representante Legal</span>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <!-- Outras tabelas com estilos semelhantes -->
<Table ss:ExpandedColumnCount="3" ss:ExpandedRowCount="15" x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="14.4">
    <Row>
        <Cell>
            <Data ss:Type="String">HTML</Data>
        </Cell>
        <Cell>
            <Data ss:Type="String">TESTE</Data>
        </Cell>
        <Cell>
            <Data ss:Type="String">MAIS</Data>
        </Cell>
    </Row>
    <Row>
        <Cell>
            <Data ss:Type="Number">56454</Data>
        </Cell>
        <Cell>
            <Data ss:Type="Number">654654</Data>
        </Cell>
        <Cell>
            <Data ss:Type="Number">654654</Data>
        </Cell>
    </Row>
</Table>
</body>

</html>",

"listSignatory": [
{
"type": 8,
"name": "${razaoSocial}",
"email": "${emissorEmail}",
"document": "${cnpjEmissor}",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1,
"documentType": 2
},
{
"type": 9,
"name": "${investidorRazaoSocial}",
"email": "${investidorEmail}",
"document": "${investidorCnpj}",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1,
"documentType": 2
},
{
"type": 9,
"name": "${custodianteRazaoSocial}",
"email": "${custodianteEmail}",
"document": "${custodianteCnpj}",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1,
"documentType": 2
},
{
"type": 9,
"name": "INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS
LTDA",
"email": "dev02@needtoken.com.br",
"document": "15.489.568/0001-95",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1,
"documentType": 2
}
]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateDocumentByHtmlTesteXML',
      apiUrl:
          '${FlixSignGroup.baseUrl}/document/service/v1/api/Document/CreateDocumentByHtml',
      callType: ApiCallType.POST,
      headers: {
        'ClientId': 'Flixsign',
        'Authorization':
            'Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJncm91cHNpZCI6IkZsaXhzaWduIiwibmFtZWlkIjoiNzYiLCJ1bmlxdWVfbmFtZSI6IkRldiAwMiIsImVtYWlsIjoiZGV2MDJAbmVlZHRva2VuLmNvbS5iciIsIklzUm9vdCI6IkZhbHNlIiwiQ29udGFJZCI6ImNiOGUzNGJmLTIzMTEtNDEzZC03ODYwLTA4ZGJlYWE0Y2YwMyIsIklzQWRtaW4iOiJGYWxzZSIsIklzT3BlcmF0b3IiOiJGYWxzZSIsIlR5cGUiOiIxIiwiQ3VzdG9tZXJJZCI6IjM2IiwiU3VwcGxpZXJJZCI6IjAiLCJCYW5rSWQiOiIwIiwiSXNVc2VUZXJtIjoiVHJ1ZSIsIlVzZXJEb2N1bWVudCI6IjQ3LjA1My4yMTkvMDAwMS0xMiIsIkN1c3RvbWVyIjpbIkxpc3QiLCJHZXQiXSwiRG9jdW1lbnQiOlsiTGlzdCIsIkdldCIsIkRlbGV0ZSIsIlNhdmUiXSwibmJmIjoxNzAyNjczNzAxLCJleHAiOjE3MDI3MDk3MDEsImlhdCI6MTcwMjY3MzcwMX0.L5f4Ar-zsaDFYXhWFtDUMEd-OWO4WL-aDxVOJhANeYEJWtGCr0MRS3wTqC4HrrTsQYyFqYNTsz7U75Yipyo1aA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? fileHash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class CreateDocumentByHtmlleandroCall {
  Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? razaoSocial = '',
    String? cnpjEmissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? emissorRua = '',
    String? emissorNumero = '',
    String? emissorBairro = '',
    String? emissorCidade = '',
    String? emissorUF = '',
    String? emissorCep = '',
    String? emissorTelefone = '',
    String? emissorEmail = '',
    String? investidorRazaoSocial = '',
    String? investidorCnpj = '',
    String? investidorRua = '',
    String? investidorBairro = '',
    String? investidorCidade = '',
    String? investidorUF = '',
    String? investidorTelefone = '',
    String? investidorComplemento = '',
    String? investidorCep = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
    String? emissorComplemento = '',
    String? investidorNumero = '',
    String? dadosFinanceirosV1convencao = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? vencimentoDa1aParcela = '',
    String? teste1 = '',
  }) async {
    final ffApiRequestBody = '''
{
"empresaId": 36,
"fileName": "Nota Comercial",
"html": "<html>

<head>
    <title>Termo de Cessão - Nº 01</title>
</head>

<body>
    <div style='text-align: center; padding: 10px 0; margin: 0 auto; width: 100%;'>
        <h3 style='text-align: left;'>TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDaEmissao} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO
            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
            Vinicius e Elias Fotografias Ltda.
        </h3>

        <table border='1' style='width: 100%;'>
            <tr>
                <td>
                    <span style='font-weight: 600;'>Razão Social: </span>
                    ${razaoSocial}
                </td>
                <td>
                    <span style='font-weight: 600;'>CNPJ/ME: </span>
                    ${cnpjEmissor}
                </td>
            </tr>
        </table>

        <p style='text-align: left; font-size: 16px;'>
            A Emissão e a celebração deste Termo Constitutivo de Nota Comercial da NumdaEmissao Emissão de Notas Comerciais, em Série Única, para
            Colocação Privada, da Marcos Vinicius e Elias Fotografias Ltda. (“Termo Constitutivo”) são realizadas com base nas deliberações dos
            administradores da Emissora, conforme previsto no Parágrafo único, artigo 46 da Lei nº14.195, de 26 de agosto de 2021 (“Lei 14.195”) e nos
            documentos societários da Emissora.
        </p>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            I. RESUMO DA EMISSÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Número da Emissão: </span><br>
                        ${numeroDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Série: </span> <br>
                        0001
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Emissão: </span> <br>
                        São Paulo/SP
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Emissão: </span> <br>
                        ${dataDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Vencimento: </span> <br>
                        ${dataDoVencimento}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Total da Emissão: </span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Nominal Unitário: </span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Quantidade: </span> <br>
                        ${quantidade}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Conversibilidade: </span><br>
                        Simples, ou seja, não conversíveis em quotas da Emissora.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custo da Emissão: </span><br>
                        Custo da Emissão

                        a ser pago pelo Titular em nome do Emissor ao Escriturador, Custodiante e Agente Liquidante na conta corrente abaixo indicada,
                        na data da liquidação das Notas Comerciais. <br>
                        <span style='font-weight: 600;'>Banco:</span> <br>
                        <span style='font-weight: 600;'>Agência: </span> AgênciaEscriturador <br>
                        <span style='font-weight: 600;'>Conta Corrente: </span>
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Garantia(s): </span><br>
                        Não haverá quaiquer tipos de garantias.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Moeda da Emissão: </span><br>
                        Reais (R\$)
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Repactuação: </span><br>
Não será contratada agência de classificação de risco
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Classificação de Risco: </span><br>
                    </td>
                    <td colspan='2'>
                        <span style='font-weight: 600;'>Tipo de Oferta: </span><br>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Pagamento: </span><br>
                        São Paulo/SP, em conta do Titular da Nota Comercial, abaixo identificada. <br><br>
                        <span style='font-weight: 600;'>Nº do Banco:</span>${dadosBancariosDoEmissorcodigo}<br>
                        <span style='font-weight: 600;'>Banco: </span>${dadosBancariosDoEmissorbanco}<br>
                        <span style='font-weight: 600;'>Agência: </span>${dadosBancariosDoEmissoragencia}<br>
                        <span style='font-weight: 600;'>Conta: </span>${dadosBancariosDoEmissorcontaCorrente}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Juros Remuneratórios: </span><br>
                        2 + 1 do Pre, exponencial e base Convencao_du_252, sendo certo que a rentabilidade se inicia apenas após a efetiva
                        integralização.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Datas de Pagamento dos Juros Remuneratórios: </span><br>
                        , conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Pagamento dos Valor Nominal Unitário: </span><br>
                        Mensal, conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.

                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Facultativo Total e Oferta de Resgate Antecipado: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse
                        valor será prerrogativa do credor de acordo com as condições de mercado.  
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Compulsório Total: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, as Notas Comerciais deverão ser resgatadas integralmente caso seja decretado o Vencimento Antecipado das Notas
                        Comerciais, conforme abaixo definido.
                    </td>
                </tr>

            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            II. PARTICIPANTES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Escriturador: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        15.489.568/0001-95
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custodiante: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        15.489.568/0001-95
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            III. COMUNICAÇÕES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para a Emissora: </span> <br>
                       ${emissorRua}, ${emissorNumero} <br>
                       ${emissorBairro}, ${emissorCidade}, ${emissorUF} <br>
                        CEP:${emissorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        ${razaoSocial} <br>
                        Telefone: ${emissorTelefone} <br>
                        E-mail: ${emissorEmail}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Escriturador: </span> <br>
                        Rua Joaquim Floriano, 1120 <br>
                        Bairro Itaim Bibi, Cidade de São Paulo <br>
                        CEP: 04534-004
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        Isaltino Andrade <br>
                        Telefone: (11) 3198.5151 <br>
                        E-mail: escrituracao@intrainvestimentos.com.br
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Custodiante: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a): </span> <br>
                        Glacimar Barbosa <br>
                        Telefone: (11) 3198-5151 <br>
                        E-mail: liquidacao@intrainvestimentos.com.br
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        As notificações, instruções e comunicações serão consideradas entregues quando recebidas sob protocolo ou com “aviso de
                        recebimento” expedido pela Empresa Brasileira de Correios, ou por telegrama nos endereços acima. As comunicações enviadas por
                        correio eletrônico serão consideradas recebidas na data de seu envio, desde que seu recebimento seja confirmado por meio de
                        recibo emitido pelo remetente (recibo emitido pela máquina utilizada pelo remetente). A mudança de qualquer dos endereços
                        acima deverá ser imediatamente comunicada às demais Partes pela Parte que tiver seu endereço alterado.
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div style='text-align: left; padding: 10px 0; margin: 0 auto; width: 100%;'>

        <h4>1 OBJETO </h4>
        <p>
            O presente Termo Constitutivo tem por objeto a ${numeroDaEmissao} emissão de notas comerciais, em serie Unica 0001, para colocação privada, da Emissora
            (“Emissão” e “Notas Comerciais”, respectivamente), representativas de promessa de pagamento em dinheiro, de acordo com as características,
            termos e condições estabelecidos neste Termo Constitutivo, nos termos da Lei nº 6.385, de 7 de dezembro de 1976, conforme alterada e da
            Lei 14.195.

        </p>

        <h4>2 CONDIÇÕES PRECEDENTES </h4>
        <p>
            A Emissão, está condicionada, nos termos do artigo 125 da Lei 10.406, de 10 de janeiro de 2002, conforme alterada, à verificação do
            cumprimento dos seguintes atos (“Condições Precedentes”):
            <br>
            <br>
            a. perfeita formalização, pela Emissora e demais partes signatárias, do Termo Constitutivo e do Boletim de Subscrição (conjuntamente, os
            “Documentos da Operação”), bem como a verificação dos poderes dos representantes dessas partes e eventuais aprovações societárias
            necessárias à celebração desses documentos; e
            <br>
            <br>
            b. recebimento, pela Emissora, dos Boletins de Subscrição devidamente formalizados, cujo modelo segue anexo a este Termo Constituivo no
            Anexo I.
            <br>
        </p>

        <h4>3 VENCIMENTO ANTECIPADO</h4>
        <p>
            Observado o disposto a seguir, o titular das Notas Comerciais poderá declarar antecipadamente vencidas todas as obrigações constantes
            deste Termo Constitutivo (“Vencimento Antecipado”) na ocorrência de qualquer uma das hipóteses abaixo:
            <br>
            <br>
            a. Se ocorrer inadimplemento de qualquer obrigação assumida pela Emissora em consonância com as cláusulas e condições aqui estabelecidas,
            principalmente no que tange ao pagamento das parcelas devidas em decorrências da celebração deste Termo Constitutivo e emissão das Notas
            Comerciais;
            <br>
            <br>
            b. Se for comprovada a falsidade de qualquer declaração, informação ou documento que houver sido respectivamente firmada, prestada ou
            entregue pela Emissora;
            <br>
            <br>
            c. Se a Emissora sofrer quaisquer medidas judiciais ou extrajudiciais, que por qualquer forma, possam afetar negativamente os créditos das
            Notas Comerciais;
            <br>
            <br>
            d. Se, sem o expresso consentimento dos credores das Notas Comerciais ocorrer a transferência a terceiros dos direitos e obrigações da
            Emissora previstos neste Termo Constitutivo; e
            <br>
            <br>
            e. Se ocorrer a transferência a terceiros dos direitos e obrigações da Emissora, previstos neste Termo Constitutivo.
            <br>
        </p>

        <h4>4 DAS DECLARAÇÕES </h4>
        <p>
            A Emissora declara e garante que:
            <br>
            <br>
            a. Possui plena capacidade e legitimidade para celebrar o presente Termo Constitutivo, realizar todas as operações e cumprir todas as
            obrigações assumidas tendo tomado todas as medidas de natureza societária, conforme aplicável, e outras eventualmente necessárias para
            autorizar a sua celebração, implementação e cumprimento de todas as obrigações constituídas;
            <br>
            <br>
            b. A celebração deste Termo Constitutivo e o cumprimento das obrigações nele dispostos: (a) não violam qualquer disposição contida nos
            seus documentos societários, conforme aplicável; (b) não violam qualquer lei, regulamento, decisão judicial, administrativa ou arbitral,
            aos quais a respectiva parte esteja vinculada; (c) não exigem qualquer consentimento ação ou autorização, prévia ou posterior, de
            terceiros;
            <br>
            <br>
            c. Este Termo Constitutivo é validamente celebrado e constitui obrigação legal, válida, vinculante e exequível, de acordo com os seus
            termos;
            <br>
            <br>
            d. Está apta a cumprir as obrigações ora previstas neste Termo Constitutivo e agirá em relação às mesmas de boa-fé e com lealdade;
            <br>
            <br>
            e. Não se encontra em estado de necessidade ou sob coação para celebrar este Termo Constitutivo e/ou quaisquer contratos e compromissos a
            ela relacionados e acessórios; e
            <br>
            <br>
            f. É devidamente estruturada, qualificada e capacitada para entender a estrutura financeira e jurídica objeto deste Termo Constitutivo.
            <br>
        </p>

        <h4>5 DO ATRASO NO PAGAMENTO E ENCARGOS MORATÓRIOS </h4>
        <p>
            Na hipótese de inadimplemento ou mora dos valores devidos no âmbito deste Termo Constitutivo, a Emissora estará obrigada a pagar ao
            titular, cumulativamente, além da quantia correspondente à dívida em aberto, os seguintes encargos:
            <br>
            <br>
            a. Juros remuneratórios nos mesmos percentuais das taxas constantes neste Termo Constitutivo, calculados a partir do vencimento das
            parcelas em aberto até a data do efetivo pagamento;
            <br>
            <br>
            b. Juros de mora à razão de 1% a.m. (um por cento ao mês), calculados a partir do vencimento das parcelas em aberto até a data do efetivo
            pagamento pela Emissora;
            <br>
            <br>
            c. Multa contratual, de natureza não compensatória, de 2% (dois por cento) incidente sobre o montante total atualizado (incluindo juros
            remuneratórios e juros de mora) do valor devido e não pago; e
            <br>
            <br>
            d. Na hipótese do Titular vir a ser compelido a recorrer a meios administrativos ou judiciais para receber os valores devidos no âmbito
            deste Termo Constitutivo, as despesas de cobrança administrativa, limitadas a 10% (dez por cento) sobre o valor do saldo devedor deste
            Termo Constitutivo e, havendo procedimento judicial, custas processuais e honorários advocatícios, estes fixados judicialmente.
            <br>
            <br>
            e. Caso qualquer data de vencimento referente aos pagamentos da Nota Comercial caia em um fim de semana ou feriado nacional, conforme
            tabela Anbima, o prazo para liquidação será prorrogado automaticamente para o primeiro dia útil subsequente, sem que incida sobre os
            valores a pagar quaisquer acréscimos de caráter remuneratório ou moratório.
            <br>
        </p>

        <h4>6 DISPOSIÇÕES GERAIS</h4>
        <p>
            <u style='font-weight: 600;'>Renúncia</u> <br>
            Não se presume a renúncia a qualquer dos direitos decorrentes da Nota Comercial. Desta forma, nenhum atraso, omissão ou liberalidade no
            exercício de qualquer direito, faculdade ou prerrogativa que caiba ao Titular, em razão de qualquer inadimplemento da Emissora,
            prejudicará o exercício de tais direitos, faculdades ou remédios, ou será interpretado como constituindo uma renúncia aos mesmos ou
            concordância com tal inadimplemento, nem constituirá novação ou modificação de quaisquer outras obrigações assumidas pela Emissora neste
            instrumento, ou precedente no tocante a qualquer outro inadimplemento ou atraso.
            <br>
            <br>
            <u style='font-weight: 600;'>Direito ao Recebimento dos Pagamentos </u> <br>
            Terá direito ao recebimento dos valores devidos em relação às Notas Comerciais, seja o pagamento realizado em caráter ordinário ou
            extraordinário, os Titulares das Notas Comerciais constituídos no encerramento do dia útil imediatamente anterior à respectiva data de
            pagamento.
            <br>
            <br>
            <u style='font-weight: 600;'>Título Executivo Extrajudicial e Execução Específica </u> <br>
            Este instrumento e as Notas Comerciais constituem títulos executivos extrajudiciais, nos termos dos incisos I e III do artigo 784 do
            Código de Processo Civil, reconhecendo as Partes desde já que, independentemente de quaisquer outras medidas cabíveis, as obrigações
            assumidas nos termos deste instrumento e com relação às Notas Comerciais estão sujeitas à execução específica, submetendo-se às
            disposições dos artigos 815 e seguintes do Código de Processo Civil, sem prejuízo do direito de declarar o vencimento antecipado das Notas
            Comerciais, nos termos deste instrumento.
            <br>
            <br>
            <u style='font-weight: 600;'>Da Outorga de Poderes </u> <br>
            A Emissora, neste ato, em caráter irrevogável e irretratável, autoriza a central depositária de valores mobiliários a cadastrar o presente
            Termo Constitutivo na Plataforma IMF Digital, para fins de cumprimento do cadastro de instrumento financeiro, bem como criar eventuais
            usuários, se e conforme solicitados de maneira formalizada, para acesso a citada plataforma, em consonância aos seus normativos, bem como
            representá-la perante os demais prestadores de serviço envolvidos na Emissão, inclusive contratá-los em seu nome, desde que a
            obrigatoriedade de pagamento seja do grupo Laqus.
            <br>
            <br>
            <u style='font-weight: 600;'>Irrevogabilidade</u> <br>
            A Nota Comercial e o presente instrumento são celebrados em caráter irrevogável e irretratável, obrigando as partes e seus sucessores a
            qualquer título.
            <br>
            <br>
            <u style='font-weight: 600;'>Cômputo do Prazo </u> <br>
            Exceto se de outra forma especificamente disposto neste instrumento, os prazos estabelecidos no presente instrumento serão computados de
            acordo com a regra prescrita no artigo 132 do Código Civil, sendo excluído o dia do começo e incluído o do vencimento.
            <br>
            <br>
            <u style='font-weight: 600;'>Assinatura Eletrônica </u> <br>
            Para os fins do artigo 10, parágrafo 2º, da Medida Provisória nº 2.200-2, de 24 de agosto de 2001, as Partes acordam e aceitam que este
            instrumento e qualquer aditamento podem ser assinados eletronicamente por meio de Docusign, com certificados digitais emitidos pela
            ICP-Brasil, e tais assinaturas eletrônicas serão legítimas e suficientes para comprovar (i) a identidade de cada representante legal, (ii)
            a vontade de cada Parte em firmar este instrumento e qualquer aditamento, e (iii) a integridade deste instrumento e qualquer alteração.
            <br>
            <br>
            <u style='font-weight: 600;'>Boa-fé e Equidade </u> <br>
            As Partes declaram, mútua e expressamente, que este instrumento foi celebrado respeitando-se os princípios de probidade e de boa-fé, por
            livre, consciente e firme manifestação de vontade das Partes e em perfeita relação de equidade.
            <br>
            <br>
            <u style='font-weight: 600;'>Lei Aplicável </u> <br>
            Este instrumento é regido pelas Leis da República Federativa do Brasil.
            <br>
            <br>
            <u style='font-weight: 600;'>Foro</u> <br>
            Fica eleito o foro da Comarca da Cidade de São Paulo, Estado de São Paulo, para dirimir quaisquer dúvidas ou controvérsias oriundas deste
            instrumento, com renúncia a qualquer outro, por mais privilegiado que seja.
            <br>
        </p>

        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>
        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            PÁGINA DE ASSINATURAS DO TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDeSerie}
            EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
        </p>

        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>${razaoSocial}</span> <br>
            <span style='font-style: italic;'>Na qualidade de Emissora</span>
        </p>
        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E
                VALORES MOBILIARIOS LTDA
            </span> <br>
            <span style='font-style: italic;'>Na qualidade de Escriturador
            </span>
        </p>

        <p style='text-align: left; font-weight: 700; padding-top: 100px;'>TESTEMUNHAS: </p>
        <div style='display: flex; justify-content: space-around;'>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
        </div>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            ANEXO I – MODELO DE BOLETIM DE SUBSCRIÇÃO DAS NOTAS COMERCIAIS
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>BOLETIM DE SUBSCRIÇÃO DA ${numeroDeSerie} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE ${numeroDeSerie}, PARA COLOCAÇÃO
                            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
                        </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>CARACTERÍSTICAS DA EMISSÃO </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        Emissão, pela <span style='font-weight: 600;'>${razaoSocial}</span>,
                        pessoa jurídica situada na Rua ${emissorRua}, ${emissorNumero}, Bairro ${emissorBairro}, Cidade de ${emissorCidade}, SP, CEP: 08150166, inscrita no CNPJ/ME sob o nº
                        ${cnpjEmissor} ('Companhia'), de 12 notas comerciais, com valor nominal unitário de R\$ ${valorTotalDaEmissao} e vencimento em ${dataDoVencimento},
                        da sua 80551 emissão ('Notas Comerciais' e 'Emissão').
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>QUALIFICAÇÃO DO SUBSCRITOR </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nome / Razão Social:</span> <br>
                        ${investidorRazaoSocial}
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        ${investidorCnpj}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Endereço:</span> <br>
                        ${investidorRua}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº:</span>
                        ${investidorNumero}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Complemento: </span> <br>
${emissorComplemento}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Bairro: </span> <br>
                        ${investidorBairro}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CEP:</span> <br>
                        ${investidorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Cidade: </span> <br>
                       ${investidorCidade}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>U.F.:</span>
                        ${investidorUF}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>País: </span> <br>
                        Brasil
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Telefone: </span> <br>
                        ${investidorTelefone}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>NOTAS COMERCIAIS SUBSCRITAS: </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>QUANTIDADE:</span> <br>
                        ${quantidade}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>PREÇO TOTAL UNITÁRIO:</span> <br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>VALOR EM R\$: </span> <br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        O Preço Total Unitário será mantido em cada data de integralização, caso distintas. A rentabilidade se inicia apenas após a
                        efetiva integralização.
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            FORMA SUBSCRIÇÃO E INTEGRALIZAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>MEIO DE INTEGRALIZAÇÃO: </span> <br><br>
                        [X] Transferência Eletrônica Disponível (TED) ou PIX, na conta bancária da Emissora, abaixo identificada. <br>
                        [ ] Depositário Central (Laqus) <br>
                        [ ] Dação em Pagamento
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>DATA DE INTEGRALIZAÇÃO: </span> <br><br>
                        A efetiva integralização deverá ser realizada em até 30 (trinta) dias corridos, contados da data de assinatura do presente
                        Boletim de Subscrição
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DA EMISSORA
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        ${dadosBancariosDoEmissorbanco}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        ${dadosBancariosDoEmissorcodigo}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        ${dadosBancariosDoEmissoragencia}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        ${dadosBancariosDoEmissorcontaCorrente}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DO ESCRITURADOR, CUSTODIANTE E AGENTE DE LIQUIDAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        Santander
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        033
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        2271
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        13065375-2
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        Declaro, para todos os fins, que estou de acordo com as condições expressas no presente boletim, bem como declaro ter obtido
                        exemplar do Termo Constitutivo.

                        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>

                        <p style='text-align: center; padding-top: 80px;'>
                            <u>________________________________________________________________________________________</u> <br>
                            <span style='font-style: italic;'>Assinatura do Subscritor ou Representante Legal</span>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <!-- Outras tabelas com estilos semelhantes -->

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        ${teste1}<br><br>
                        outroteste
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        033
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        2271
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        13065375-2
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
            </tbody>
        </table>
</body>

</html>",

"listSignatory": [
{
"type": 8,
"name": "Rodrigo",
"email": "silvestrini.silvestrini@gmail.com",
"document": "69.053.571/0001-90",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1
},
{
"type": 9,
"name": "Rodrigo",
"email": "rodrigo.pedroso@live.com",
"document": "34650965000141",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1
}
]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateDocumentByHtmlleandro',
      apiUrl:
          '${FlixSignGroup.baseUrl}/document/service/v1/api/Document/CreateDocumentByHtml',
      callType: ApiCallType.POST,
      headers: {
        'ClientId': 'Flixsign',
        'Authorization':
            'Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJncm91cHNpZCI6IkZsaXhzaWduIiwibmFtZWlkIjoiNzYiLCJ1bmlxdWVfbmFtZSI6IkRldiAwMiIsImVtYWlsIjoiZGV2MDJAbmVlZHRva2VuLmNvbS5iciIsIklzUm9vdCI6IkZhbHNlIiwiQ29udGFJZCI6ImNiOGUzNGJmLTIzMTEtNDEzZC03ODYwLTA4ZGJlYWE0Y2YwMyIsIklzQWRtaW4iOiJGYWxzZSIsIklzT3BlcmF0b3IiOiJGYWxzZSIsIlR5cGUiOiIxIiwiQ3VzdG9tZXJJZCI6IjM2IiwiU3VwcGxpZXJJZCI6IjAiLCJCYW5rSWQiOiIwIiwiSXNVc2VUZXJtIjoiVHJ1ZSIsIlVzZXJEb2N1bWVudCI6IjQ3LjA1My4yMTkvMDAwMS0xMiIsIkN1c3RvbWVyIjpbIkxpc3QiLCJHZXQiXSwiRG9jdW1lbnQiOlsiTGlzdCIsIkdldCIsIkRlbGV0ZSIsIlNhdmUiXSwibmJmIjoxNzAyNjczNzAxLCJleHAiOjE3MDI3MDk3MDEsImlhdCI6MTcwMjY3MzcwMX0.L5f4Ar-zsaDFYXhWFtDUMEd-OWO4WL-aDxVOJhANeYEJWtGCr0MRS3wTqC4HrrTsQYyFqYNTsz7U75Yipyo1aA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? fileHash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class CreateDocumentByHtmlOriginalCopyCall {
  Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? razaoSocial = '',
    String? cnpjEmissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? emissorRua = '',
    String? emissorNumero = '',
    String? emissorBairro = '',
    String? emissorCidade = '',
    String? emissorUF = '',
    String? emissorCep = '',
    String? emissorTelefone = '',
    String? emissorEmail = '',
    String? investidorRazaoSocial = '',
    String? investidorCnpj = '',
    String? investidorRua = '',
    String? investidorBairro = '',
    String? investidorCidade = '',
    String? investidorUF = '',
    String? investidorTelefone = '',
    String? investidorComplemento = '',
    String? investidorCep = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
    String? emissorComplemento = '',
    String? investidorNumero = '',
    String? dadosFinanceirosV1convencao = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? vencimentoDa1aParcela = '',
  }) async {
    final ffApiRequestBody = '''
{
"empresaId": 36,
"fileName": "Nota Comercial",
"html": "<html>

<head>
    <title>Termo de Cessão - Nº 01</title>
</head>

<body>
    <div style='text-align: center; padding: 10px 0; margin: 0 auto; width: 100%;'>
        <h3 style='text-align: left;'>TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDaEmissao} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO
            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
            Vinicius e Elias Fotografias Ltda.
        </h3>

        <table border='1' style='width: 100%;'>
            <tr>
                <td>
                    <span style='font-weight: 600;'>Razão Social: </span>
                    ${razaoSocial}
                </td>
                <td>
                    <span style='font-weight: 600;'>CNPJ/ME: </span>
                    ${cnpjEmissor}
                </td>
            </tr>
        </table>

        <p style='text-align: left; font-size: 16px;'>
            A Emissão e a celebração deste Termo Constitutivo de Nota Comercial da NumdaEmissao Emissão de Notas Comerciais, em Série Única, para
            Colocação Privada, da Marcos Vinicius e Elias Fotografias Ltda. (“Termo Constitutivo”) são realizadas com base nas deliberações dos
            administradores da Emissora, conforme previsto no Parágrafo único, artigo 46 da Lei nº14.195, de 26 de agosto de 2021 (“Lei 14.195”) e nos
            documentos societários da Emissora.
        </p>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            I. RESUMO DA EMISSÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Número da Emissão: </span><br>
                        ${numeroDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Série: </span> <br>
                        0001
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Emissão: </span> <br>
                        São Paulo/SP
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Emissão: </span> <br>
                        ${dataDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Vencimento: </span> <br>
                        ${dataDoVencimento}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Total da Emissão: </span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Nominal Unitário: </span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Quantidade: </span> <br>
                        ${quantidade}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Conversibilidade: </span><br>
                        Simples, ou seja, não conversíveis em quotas da Emissora.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custo da Emissão: </span><br>
                        Custo da Emissão

                        a ser pago pelo Titular em nome do Emissor ao Escriturador, Custodiante e Agente Liquidante na conta corrente abaixo indicada,
                        na data da liquidação das Notas Comerciais. <br>
                        <span style='font-weight: 600;'>Banco:</span> <br>
                        <span style='font-weight: 600;'>Agência: </span> AgênciaEscriturador <br>
                        <span style='font-weight: 600;'>Conta Corrente: </span>
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Garantia(s): </span><br>
                        Não haverá quaiquer tipos de garantias.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Moeda da Emissão: </span><br>
                        Reais (R\$)
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Repactuação: </span><br>
Não será contratada agência de classificação de risco
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Classificação de Risco: </span><br>
                    </td>
                    <td colspan='2'>
                        <span style='font-weight: 600;'>Tipo de Oferta: </span><br>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Pagamento: </span><br>
                        São Paulo/SP, em conta do Titular da Nota Comercial, abaixo identificada. <br><br>
                        <span style='font-weight: 600;'>Nº do Banco:</span>${dadosBancariosDoEmissorcodigo}<br>
                        <span style='font-weight: 600;'>Banco: </span>${dadosBancariosDoEmissorbanco}<br>
                        <span style='font-weight: 600;'>Agência: </span>${dadosBancariosDoEmissoragencia}<br>
                        <span style='font-weight: 600;'>Conta: </span>${dadosBancariosDoEmissorcontaCorrente}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Juros Remuneratórios: </span><br>
                        2 + 1 do Pre, exponencial e base Convencao_du_252, sendo certo que a rentabilidade se inicia apenas após a efetiva
                        integralização.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Datas de Pagamento dos Juros Remuneratórios: </span><br>
                        , conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Pagamento dos Valor Nominal Unitário: </span><br>
                        Mensal, conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.

                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Facultativo Total e Oferta de Resgate Antecipado: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse
                        valor será prerrogativa do credor de acordo com as condições de mercado.  
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Compulsório Total: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, as Notas Comerciais deverão ser resgatadas integralmente caso seja decretado o Vencimento Antecipado das Notas
                        Comerciais, conforme abaixo definido.
                    </td>
                </tr>

            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            II. PARTICIPANTES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Escriturador: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        15.489.568/0001-95
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custodiante: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        15.489.568/0001-95
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            III. COMUNICAÇÕES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para a Emissora: </span> <br>
                       ${emissorRua}, ${emissorNumero} <br>
                       ${emissorBairro}, ${emissorCidade}, ${emissorUF} <br>
                        CEP:${emissorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        ${razaoSocial} <br>
                        Telefone: ${emissorTelefone} <br>
                        E-mail: ${emissorEmail}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Escriturador: </span> <br>
                        Rua Joaquim Floriano, 1120 <br>
                        Bairro Itaim Bibi, Cidade de São Paulo <br>
                        CEP: 04534-004
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        Isaltino Andrade <br>
                        Telefone: (11) 3198.5151 <br>
                        E-mail: escrituracao@intrainvestimentos.com.br
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Custodiante: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a): </span> <br>
                        Glacimar Barbosa <br>
                        Telefone: (11) 3198-5151 <br>
                        E-mail: liquidacao@intrainvestimentos.com.br
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        As notificações, instruções e comunicações serão consideradas entregues quando recebidas sob protocolo ou com “aviso de
                        recebimento” expedido pela Empresa Brasileira de Correios, ou por telegrama nos endereços acima. As comunicações enviadas por
                        correio eletrônico serão consideradas recebidas na data de seu envio, desde que seu recebimento seja confirmado por meio de
                        recibo emitido pelo remetente (recibo emitido pela máquina utilizada pelo remetente). A mudança de qualquer dos endereços
                        acima deverá ser imediatamente comunicada às demais Partes pela Parte que tiver seu endereço alterado.
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div style='text-align: left; padding: 10px 0; margin: 0 auto; width: 100%;'>

        <h4>1 OBJETO </h4>
        <p>
            O presente Termo Constitutivo tem por objeto a ${numeroDaEmissao} emissão de notas comerciais, em serie Unica 0001, para colocação privada, da Emissora
            (“Emissão” e “Notas Comerciais”, respectivamente), representativas de promessa de pagamento em dinheiro, de acordo com as características,
            termos e condições estabelecidos neste Termo Constitutivo, nos termos da Lei nº 6.385, de 7 de dezembro de 1976, conforme alterada e da
            Lei 14.195.

        </p>

        <h4>2 CONDIÇÕES PRECEDENTES </h4>
        <p>
            A Emissão, está condicionada, nos termos do artigo 125 da Lei 10.406, de 10 de janeiro de 2002, conforme alterada, à verificação do
            cumprimento dos seguintes atos (“Condições Precedentes”):
            <br>
            <br>
            a. perfeita formalização, pela Emissora e demais partes signatárias, do Termo Constitutivo e do Boletim de Subscrição (conjuntamente, os
            “Documentos da Operação”), bem como a verificação dos poderes dos representantes dessas partes e eventuais aprovações societárias
            necessárias à celebração desses documentos; e
            <br>
            <br>
            b. recebimento, pela Emissora, dos Boletins de Subscrição devidamente formalizados, cujo modelo segue anexo a este Termo Constituivo no
            Anexo I.
            <br>
        </p>

        <h4>3 VENCIMENTO ANTECIPADO</h4>
        <p>
            Observado o disposto a seguir, o titular das Notas Comerciais poderá declarar antecipadamente vencidas todas as obrigações constantes
            deste Termo Constitutivo (“Vencimento Antecipado”) na ocorrência de qualquer uma das hipóteses abaixo:
            <br>
            <br>
            a. Se ocorrer inadimplemento de qualquer obrigação assumida pela Emissora em consonância com as cláusulas e condições aqui estabelecidas,
            principalmente no que tange ao pagamento das parcelas devidas em decorrências da celebração deste Termo Constitutivo e emissão das Notas
            Comerciais;
            <br>
            <br>
            b. Se for comprovada a falsidade de qualquer declaração, informação ou documento que houver sido respectivamente firmada, prestada ou
            entregue pela Emissora;
            <br>
            <br>
            c. Se a Emissora sofrer quaisquer medidas judiciais ou extrajudiciais, que por qualquer forma, possam afetar negativamente os créditos das
            Notas Comerciais;
            <br>
            <br>
            d. Se, sem o expresso consentimento dos credores das Notas Comerciais ocorrer a transferência a terceiros dos direitos e obrigações da
            Emissora previstos neste Termo Constitutivo; e
            <br>
            <br>
            e. Se ocorrer a transferência a terceiros dos direitos e obrigações da Emissora, previstos neste Termo Constitutivo.
            <br>
        </p>

        <h4>4 DAS DECLARAÇÕES </h4>
        <p>
            A Emissora declara e garante que:
            <br>
            <br>
            a. Possui plena capacidade e legitimidade para celebrar o presente Termo Constitutivo, realizar todas as operações e cumprir todas as
            obrigações assumidas tendo tomado todas as medidas de natureza societária, conforme aplicável, e outras eventualmente necessárias para
            autorizar a sua celebração, implementação e cumprimento de todas as obrigações constituídas;
            <br>
            <br>
            b. A celebração deste Termo Constitutivo e o cumprimento das obrigações nele dispostos: (a) não violam qualquer disposição contida nos
            seus documentos societários, conforme aplicável; (b) não violam qualquer lei, regulamento, decisão judicial, administrativa ou arbitral,
            aos quais a respectiva parte esteja vinculada; (c) não exigem qualquer consentimento ação ou autorização, prévia ou posterior, de
            terceiros;
            <br>
            <br>
            c. Este Termo Constitutivo é validamente celebrado e constitui obrigação legal, válida, vinculante e exequível, de acordo com os seus
            termos;
            <br>
            <br>
            d. Está apta a cumprir as obrigações ora previstas neste Termo Constitutivo e agirá em relação às mesmas de boa-fé e com lealdade;
            <br>
            <br>
            e. Não se encontra em estado de necessidade ou sob coação para celebrar este Termo Constitutivo e/ou quaisquer contratos e compromissos a
            ela relacionados e acessórios; e
            <br>
            <br>
            f. É devidamente estruturada, qualificada e capacitada para entender a estrutura financeira e jurídica objeto deste Termo Constitutivo.
            <br>
        </p>

        <h4>5 DO ATRASO NO PAGAMENTO E ENCARGOS MORATÓRIOS </h4>
        <p>
            Na hipótese de inadimplemento ou mora dos valores devidos no âmbito deste Termo Constitutivo, a Emissora estará obrigada a pagar ao
            titular, cumulativamente, além da quantia correspondente à dívida em aberto, os seguintes encargos:
            <br>
            <br>
            a. Juros remuneratórios nos mesmos percentuais das taxas constantes neste Termo Constitutivo, calculados a partir do vencimento das
            parcelas em aberto até a data do efetivo pagamento;
            <br>
            <br>
            b. Juros de mora à razão de 1% a.m. (um por cento ao mês), calculados a partir do vencimento das parcelas em aberto até a data do efetivo
            pagamento pela Emissora;
            <br>
            <br>
            c. Multa contratual, de natureza não compensatória, de 2% (dois por cento) incidente sobre o montante total atualizado (incluindo juros
            remuneratórios e juros de mora) do valor devido e não pago; e
            <br>
            <br>
            d. Na hipótese do Titular vir a ser compelido a recorrer a meios administrativos ou judiciais para receber os valores devidos no âmbito
            deste Termo Constitutivo, as despesas de cobrança administrativa, limitadas a 10% (dez por cento) sobre o valor do saldo devedor deste
            Termo Constitutivo e, havendo procedimento judicial, custas processuais e honorários advocatícios, estes fixados judicialmente.
            <br>
            <br>
            e. Caso qualquer data de vencimento referente aos pagamentos da Nota Comercial caia em um fim de semana ou feriado nacional, conforme
            tabela Anbima, o prazo para liquidação será prorrogado automaticamente para o primeiro dia útil subsequente, sem que incida sobre os
            valores a pagar quaisquer acréscimos de caráter remuneratório ou moratório.
            <br>
        </p>

        <h4>6 DISPOSIÇÕES GERAIS</h4>
        <p>
            <u style='font-weight: 600;'>Renúncia</u> <br>
            Não se presume a renúncia a qualquer dos direitos decorrentes da Nota Comercial. Desta forma, nenhum atraso, omissão ou liberalidade no
            exercício de qualquer direito, faculdade ou prerrogativa que caiba ao Titular, em razão de qualquer inadimplemento da Emissora,
            prejudicará o exercício de tais direitos, faculdades ou remédios, ou será interpretado como constituindo uma renúncia aos mesmos ou
            concordância com tal inadimplemento, nem constituirá novação ou modificação de quaisquer outras obrigações assumidas pela Emissora neste
            instrumento, ou precedente no tocante a qualquer outro inadimplemento ou atraso.
            <br>
            <br>
            <u style='font-weight: 600;'>Direito ao Recebimento dos Pagamentos </u> <br>
            Terá direito ao recebimento dos valores devidos em relação às Notas Comerciais, seja o pagamento realizado em caráter ordinário ou
            extraordinário, os Titulares das Notas Comerciais constituídos no encerramento do dia útil imediatamente anterior à respectiva data de
            pagamento.
            <br>
            <br>
            <u style='font-weight: 600;'>Título Executivo Extrajudicial e Execução Específica </u> <br>
            Este instrumento e as Notas Comerciais constituem títulos executivos extrajudiciais, nos termos dos incisos I e III do artigo 784 do
            Código de Processo Civil, reconhecendo as Partes desde já que, independentemente de quaisquer outras medidas cabíveis, as obrigações
            assumidas nos termos deste instrumento e com relação às Notas Comerciais estão sujeitas à execução específica, submetendo-se às
            disposições dos artigos 815 e seguintes do Código de Processo Civil, sem prejuízo do direito de declarar o vencimento antecipado das Notas
            Comerciais, nos termos deste instrumento.
            <br>
            <br>
            <u style='font-weight: 600;'>Da Outorga de Poderes </u> <br>
            A Emissora, neste ato, em caráter irrevogável e irretratável, autoriza a central depositária de valores mobiliários a cadastrar o presente
            Termo Constitutivo na Plataforma IMF Digital, para fins de cumprimento do cadastro de instrumento financeiro, bem como criar eventuais
            usuários, se e conforme solicitados de maneira formalizada, para acesso a citada plataforma, em consonância aos seus normativos, bem como
            representá-la perante os demais prestadores de serviço envolvidos na Emissão, inclusive contratá-los em seu nome, desde que a
            obrigatoriedade de pagamento seja do grupo Laqus.
            <br>
            <br>
            <u style='font-weight: 600;'>Irrevogabilidade</u> <br>
            A Nota Comercial e o presente instrumento são celebrados em caráter irrevogável e irretratável, obrigando as partes e seus sucessores a
            qualquer título.
            <br>
            <br>
            <u style='font-weight: 600;'>Cômputo do Prazo </u> <br>
            Exceto se de outra forma especificamente disposto neste instrumento, os prazos estabelecidos no presente instrumento serão computados de
            acordo com a regra prescrita no artigo 132 do Código Civil, sendo excluído o dia do começo e incluído o do vencimento.
            <br>
            <br>
            <u style='font-weight: 600;'>Assinatura Eletrônica </u> <br>
            Para os fins do artigo 10, parágrafo 2º, da Medida Provisória nº 2.200-2, de 24 de agosto de 2001, as Partes acordam e aceitam que este
            instrumento e qualquer aditamento podem ser assinados eletronicamente por meio de Docusign, com certificados digitais emitidos pela
            ICP-Brasil, e tais assinaturas eletrônicas serão legítimas e suficientes para comprovar (i) a identidade de cada representante legal, (ii)
            a vontade de cada Parte em firmar este instrumento e qualquer aditamento, e (iii) a integridade deste instrumento e qualquer alteração.
            <br>
            <br>
            <u style='font-weight: 600;'>Boa-fé e Equidade </u> <br>
            As Partes declaram, mútua e expressamente, que este instrumento foi celebrado respeitando-se os princípios de probidade e de boa-fé, por
            livre, consciente e firme manifestação de vontade das Partes e em perfeita relação de equidade.
            <br>
            <br>
            <u style='font-weight: 600;'>Lei Aplicável </u> <br>
            Este instrumento é regido pelas Leis da República Federativa do Brasil.
            <br>
            <br>
            <u style='font-weight: 600;'>Foro</u> <br>
            Fica eleito o foro da Comarca da Cidade de São Paulo, Estado de São Paulo, para dirimir quaisquer dúvidas ou controvérsias oriundas deste
            instrumento, com renúncia a qualquer outro, por mais privilegiado que seja.
            <br>
        </p>

        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>
        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            PÁGINA DE ASSINATURAS DO TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDeSerie}
            EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
        </p>

        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>${razaoSocial}</span> <br>
            <span style='font-style: italic;'>Na qualidade de Emissora</span>
        </p>
        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E
                VALORES MOBILIARIOS LTDA
            </span> <br>
            <span style='font-style: italic;'>Na qualidade de Escriturador
            </span>
        </p>

        <p style='text-align: left; font-weight: 700; padding-top: 100px;'>TESTEMUNHAS: </p>
        <div style='display: flex; justify-content: space-around;'>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
        </div>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            ANEXO I – MODELO DE BOLETIM DE SUBSCRIÇÃO DAS NOTAS COMERCIAIS
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>BOLETIM DE SUBSCRIÇÃO DA ${numeroDeSerie} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE ${numeroDeSerie}, PARA COLOCAÇÃO
                            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
                        </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>CARACTERÍSTICAS DA EMISSÃO </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        Emissão, pela <span style='font-weight: 600;'>${razaoSocial}</span>,
                        pessoa jurídica situada na Rua ${emissorRua}, ${emissorNumero}, Bairro ${emissorBairro}, Cidade de ${emissorCidade}, SP, CEP: 08150166, inscrita no CNPJ/ME sob o nº
                        ${cnpjEmissor} ('Companhia'), de 12 notas comerciais, com valor nominal unitário de R\$ ${valorTotalDaEmissao} e vencimento em ${dataDoVencimento},
                        da sua 80551 emissão ('Notas Comerciais' e 'Emissão').
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>QUALIFICAÇÃO DO SUBSCRITOR </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nome / Razão Social:</span> <br>
                        ${investidorRazaoSocial}
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        ${investidorCnpj}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Endereço:</span> <br>
                        ${investidorRua}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº:</span>
                        ${investidorNumero}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Complemento: </span> <br>
${emissorComplemento}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Bairro: </span> <br>
                        ${investidorBairro}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CEP:</span> <br>
                        ${investidorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Cidade: </span> <br>
                       ${investidorCidade}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>U.F.:</span>
                        ${investidorUF}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>País: </span> <br>
                        Brasil
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Telefone: </span> <br>
                        ${investidorTelefone}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>NOTAS COMERCIAIS SUBSCRITAS: </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>QUANTIDADE:</span> <br>
                        ${quantidade}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>PREÇO TOTAL UNITÁRIO:</span> <br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>VALOR EM R\$: </span> <br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        O Preço Total Unitário será mantido em cada data de integralização, caso distintas. A rentabilidade se inicia apenas após a
                        efetiva integralização.
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            FORMA SUBSCRIÇÃO E INTEGRALIZAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>MEIO DE INTEGRALIZAÇÃO: </span> <br><br>
                        [X] Transferência Eletrônica Disponível (TED) ou PIX, na conta bancária da Emissora, abaixo identificada. <br>
                        [ ] Depositário Central (Laqus) <br>
                        [ ] Dação em Pagamento
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>DATA DE INTEGRALIZAÇÃO: </span> <br><br>
                        A efetiva integralização deverá ser realizada em até 30 (trinta) dias corridos, contados da data de assinatura do presente
                        Boletim de Subscrição
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DA EMISSORA
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        ${dadosBancariosDoEmissorbanco}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        ${dadosBancariosDoEmissorcodigo}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        ${dadosBancariosDoEmissoragencia}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        ${dadosBancariosDoEmissorcontaCorrente}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DO ESCRITURADOR, CUSTODIANTE E AGENTE DE LIQUIDAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        Santander
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        033
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        2271
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        13065375-2
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        Declaro, para todos os fins, que estou de acordo com as condições expressas no presente boletim, bem como declaro ter obtido
                        exemplar do Termo Constitutivo.

                        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>

                        <p style='text-align: center; padding-top: 80px;'>
                            <u>________________________________________________________________________________________</u> <br>
                            <span style='font-style: italic;'>Assinatura do Subscritor ou Representante Legal</span>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <!-- Outras tabelas com estilos semelhantes -->
</body>

</html>",

"listSignatory": [
{
"type": 8,
"name": "Rodrigo",
"email": "dev02@needtoken.com.br",
"document": "69.053.571/0001-90",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1
},
{
"type": 9,
"name": "Rodrigo",
"email": "rodrigo.pedroso@live.com",
"document": "34650965000141",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1
}
]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateDocumentByHtmlOriginal Copy',
      apiUrl:
          '${FlixSignGroup.baseUrl}/document/service/v1/api/Document/CreateDocumentByHtml',
      callType: ApiCallType.POST,
      headers: {
        'ClientId': 'Flixsign',
        'Authorization':
            'Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJncm91cHNpZCI6IkZsaXhzaWduIiwibmFtZWlkIjoiNzYiLCJ1bmlxdWVfbmFtZSI6IkRldiAwMiIsImVtYWlsIjoiZGV2MDJAbmVlZHRva2VuLmNvbS5iciIsIklzUm9vdCI6IkZhbHNlIiwiQ29udGFJZCI6ImNiOGUzNGJmLTIzMTEtNDEzZC03ODYwLTA4ZGJlYWE0Y2YwMyIsIklzQWRtaW4iOiJGYWxzZSIsIklzT3BlcmF0b3IiOiJGYWxzZSIsIlR5cGUiOiIxIiwiQ3VzdG9tZXJJZCI6IjM2IiwiU3VwcGxpZXJJZCI6IjAiLCJCYW5rSWQiOiIwIiwiSXNVc2VUZXJtIjoiVHJ1ZSIsIlVzZXJEb2N1bWVudCI6IjQ3LjA1My4yMTkvMDAwMS0xMiIsIkN1c3RvbWVyIjpbIkxpc3QiLCJHZXQiXSwiRG9jdW1lbnQiOlsiTGlzdCIsIkdldCIsIkRlbGV0ZSIsIlNhdmUiXSwibmJmIjoxNzAyNjczNzAxLCJleHAiOjE3MDI3MDk3MDEsImlhdCI6MTcwMjY3MzcwMX0.L5f4Ar-zsaDFYXhWFtDUMEd-OWO4WL-aDxVOJhANeYEJWtGCr0MRS3wTqC4HrrTsQYyFqYNTsz7U75Yipyo1aA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? fileHash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class CreateDocumentByHtmlTabelaMatCall {
  Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? razaoSocial = '',
    String? cnpjEmissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? emissorRua = '',
    String? emissorNumero = '',
    String? emissorBairro = '',
    String? emissorCidade = '',
    String? emissorUF = '',
    String? emissorCep = '',
    String? emissorTelefone = '',
    String? emissorEmail = '',
    String? investidorRazaoSocial = '',
    String? investidorCnpj = '',
    String? investidorRua = '',
    String? investidorBairro = '',
    String? investidorCidade = '',
    String? investidorUF = '',
    String? investidorTelefone = '',
    String? investidorComplemento = '',
    String? investidorCep = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
    String? emissorComplemento = '',
    String? investidorNumero = '',
    String? dadosFinanceirosV1convencao = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? vencimentoDa1aParcela = '',
    String? data = '',
    String? juros = '',
    String? parcela = '',
    String? amortizacao = '',
  }) async {
    final ffApiRequestBody = '''
{
"empresaId": 36,
"fileName": "Nota Comercial",
"html": "<html>

<head>
    <title>Termo de Cessão - Nº 01</title>
</head>

<body>
    <div style='text-align: center; padding: 10px 0; margin: 0 auto; width: 100%;'>
        <h3 style='text-align: left;'>TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDaEmissao} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO
            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
            Vinicius e Elias Fotografias Ltda.
        </h3>

        <table border='1' style='width: 100%;'>
            <tr>
                <td>
                    <span style='font-weight: 600;'>Razão Social: </span>
                    ${razaoSocial}
                </td>
                <td>
                    <span style='font-weight: 600;'>CNPJ/ME: </span>
                    ${cnpjEmissor}
                </td>
            </tr>
        </table>

        <p style='text-align: left; font-size: 16px;'>
            A Emissão e a celebração deste Termo Constitutivo de Nota Comercial da NumdaEmissao Emissão de Notas Comerciais, em Série Única, para
            Colocação Privada, da Marcos Vinicius e Elias Fotografias Ltda. (“Termo Constitutivo”) são realizadas com base nas deliberações dos
            administradores da Emissora, conforme previsto no Parágrafo único, artigo 46 da Lei nº14.195, de 26 de agosto de 2021 (“Lei 14.195”) e nos
            documentos societários da Emissora.
        </p>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            I. RESUMO DA EMISSÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Número da Emissão: </span><br>
                        ${numeroDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Série: </span> <br>
                        0001
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Emissão: </span> <br>
                        São Paulo/SP
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Emissão: </span> <br>
                        ${dataDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Vencimento: </span> <br>
                        ${dataDoVencimento}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Total da Emissão: </span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Nominal Unitário: </span> <br>
                        ${valorTotalDaEmissao}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Quantidade: </span> <br>
                        ${quantidade}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Conversibilidade: </span><br>
                        Simples, ou seja, não conversíveis em quotas da Emissora.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custo da Emissão: </span><br>
                        Custo da Emissão

                        a ser pago pelo Titular em nome do Emissor ao Escriturador, Custodiante e Agente Liquidante na conta corrente abaixo indicada,
                        na data da liquidação das Notas Comerciais. <br>
                        <span style='font-weight: 600;'>Banco:</span> <br>
                        <span style='font-weight: 600;'>Agência: </span> AgênciaEscriturador <br>
                        <span style='font-weight: 600;'>Conta Corrente: </span>
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Garantia(s): </span><br>
                        Não haverá quaiquer tipos de garantias.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Moeda da Emissão: </span><br>
                        Reais (R\$)
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Repactuação: </span><br>
Não será contratada agência de classificação de risco
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Classificação de Risco: </span><br>
                    </td>
                    <td colspan='2'>
                        <span style='font-weight: 600;'>Tipo de Oferta: </span><br>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Local de Pagamento: </span><br>
                        São Paulo/SP, em conta do Titular da Nota Comercial, abaixo identificada. <br><br>
                        <span style='font-weight: 600;'>Nº do Banco:</span>${dadosBancariosDoEmissorcodigo}<br>
                        <span style='font-weight: 600;'>Banco: </span>${dadosBancariosDoEmissorbanco}<br>
                        <span style='font-weight: 600;'>Agência: </span>${dadosBancariosDoEmissoragencia}<br>
                        <span style='font-weight: 600;'>Conta: </span>${dadosBancariosDoEmissorcontaCorrente}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Juros Remuneratórios: </span><br>
                        2 + 1 do Pre, exponencial e base Convencao_du_252, sendo certo que a rentabilidade se inicia apenas após a efetiva
                        integralização.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Datas de Pagamento dos Juros Remuneratórios: </span><br>
                        , conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data de Pagamento dos Valor Nominal Unitário: </span><br>
                        Mensal, conforme vencimentos e fluxo de pagamento constante no Anexo II.
                        O 1° Vencimento será em ${vencimentoDa1aParcela}, com captalização mensal de juros.
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização Extraordinária: </span><br>
                        . Se sim, a possibilidade de amortização extraordinária, seja total ou parcial, das Notas Comerciais. Ocorrendo a amortização,
                        será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse valor
                        será prerrogativa do credor de acordo com as condições de mercado.

                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Facultativo Total e Oferta de Resgate Antecipado: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, será devido o valor da Nota Comercial aplicando-se o juros até o vencimento e qualquer desconto concedido sobre esse
                        valor será prerrogativa do credor de acordo com as condições de mercado.  
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Resgate Antecipado Compulsório Total: </span><br>
                        Mediante o pagamento dos juros incorridos no respectivo período. Se sim, as Notas Comerciais deverão ser resgatadas integralmente caso seja decretado o Vencimento Antecipado das Notas
                        Comerciais, conforme abaixo definido.
                    </td>
                </tr>

            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            II. PARTICIPANTES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Escriturador: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        15.489.568/0001-95
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Custodiante: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        15.489.568/0001-95
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: left; font-size: 16px; font-weight: 600;'>
            III. COMUNICAÇÕES
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para a Emissora: </span> <br>
                       ${emissorRua}, ${emissorNumero} <br>
                       ${emissorBairro}, ${emissorCidade}, ${emissorUF} <br>
                        CEP:${emissorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        ${razaoSocial} <br>
                        Telefone: ${emissorTelefone} <br>
                        E-mail: ${emissorEmail}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Escriturador: </span> <br>
                        Rua Joaquim Floriano, 1120 <br>
                        Bairro Itaim Bibi, Cidade de São Paulo <br>
                        CEP: 04534-004
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a):</span> <br>
                        Isaltino Andrade <br>
                        Telefone: (11) 3198.5151 <br>
                        E-mail: escrituracao@intrainvestimentos.com.br
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Se para o Custodiante: </span> <br>
                        INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E VALORES MOBILIARIOS LTDA
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Att. Sr.(a): </span> <br>
                        Glacimar Barbosa <br>
                        Telefone: (11) 3198-5151 <br>
                        E-mail: liquidacao@intrainvestimentos.com.br
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        As notificações, instruções e comunicações serão consideradas entregues quando recebidas sob protocolo ou com “aviso de
                        recebimento” expedido pela Empresa Brasileira de Correios, ou por telegrama nos endereços acima. As comunicações enviadas por
                        correio eletrônico serão consideradas recebidas na data de seu envio, desde que seu recebimento seja confirmado por meio de
                        recibo emitido pelo remetente (recibo emitido pela máquina utilizada pelo remetente). A mudança de qualquer dos endereços
                        acima deverá ser imediatamente comunicada às demais Partes pela Parte que tiver seu endereço alterado.
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div style='text-align: left; padding: 10px 0; margin: 0 auto; width: 100%;'>

        <h4>1 OBJETO </h4>
        <p>
            O presente Termo Constitutivo tem por objeto a ${numeroDaEmissao} emissão de notas comerciais, em serie Unica 0001, para colocação privada, da Emissora
            (“Emissão” e “Notas Comerciais”, respectivamente), representativas de promessa de pagamento em dinheiro, de acordo com as características,
            termos e condições estabelecidos neste Termo Constitutivo, nos termos da Lei nº 6.385, de 7 de dezembro de 1976, conforme alterada e da
            Lei 14.195.

        </p>

        <h4>2 CONDIÇÕES PRECEDENTES </h4>
        <p>
            A Emissão, está condicionada, nos termos do artigo 125 da Lei 10.406, de 10 de janeiro de 2002, conforme alterada, à verificação do
            cumprimento dos seguintes atos (“Condições Precedentes”):
            <br>
            <br>
            a. perfeita formalização, pela Emissora e demais partes signatárias, do Termo Constitutivo e do Boletim de Subscrição (conjuntamente, os
            “Documentos da Operação”), bem como a verificação dos poderes dos representantes dessas partes e eventuais aprovações societárias
            necessárias à celebração desses documentos; e
            <br>
            <br>
            b. recebimento, pela Emissora, dos Boletins de Subscrição devidamente formalizados, cujo modelo segue anexo a este Termo Constituivo no
            Anexo I.
            <br>
        </p>

        <h4>3 VENCIMENTO ANTECIPADO</h4>
        <p>
            Observado o disposto a seguir, o titular das Notas Comerciais poderá declarar antecipadamente vencidas todas as obrigações constantes
            deste Termo Constitutivo (“Vencimento Antecipado”) na ocorrência de qualquer uma das hipóteses abaixo:
            <br>
            <br>
            a. Se ocorrer inadimplemento de qualquer obrigação assumida pela Emissora em consonância com as cláusulas e condições aqui estabelecidas,
            principalmente no que tange ao pagamento das parcelas devidas em decorrências da celebração deste Termo Constitutivo e emissão das Notas
            Comerciais;
            <br>
            <br>
            b. Se for comprovada a falsidade de qualquer declaração, informação ou documento que houver sido respectivamente firmada, prestada ou
            entregue pela Emissora;
            <br>
            <br>
            c. Se a Emissora sofrer quaisquer medidas judiciais ou extrajudiciais, que por qualquer forma, possam afetar negativamente os créditos das
            Notas Comerciais;
            <br>
            <br>
            d. Se, sem o expresso consentimento dos credores das Notas Comerciais ocorrer a transferência a terceiros dos direitos e obrigações da
            Emissora previstos neste Termo Constitutivo; e
            <br>
            <br>
            e. Se ocorrer a transferência a terceiros dos direitos e obrigações da Emissora, previstos neste Termo Constitutivo.
            <br>
        </p>

        <h4>4 DAS DECLARAÇÕES </h4>
        <p>
            A Emissora declara e garante que:
            <br>
            <br>
            a. Possui plena capacidade e legitimidade para celebrar o presente Termo Constitutivo, realizar todas as operações e cumprir todas as
            obrigações assumidas tendo tomado todas as medidas de natureza societária, conforme aplicável, e outras eventualmente necessárias para
            autorizar a sua celebração, implementação e cumprimento de todas as obrigações constituídas;
            <br>
            <br>
            b. A celebração deste Termo Constitutivo e o cumprimento das obrigações nele dispostos: (a) não violam qualquer disposição contida nos
            seus documentos societários, conforme aplicável; (b) não violam qualquer lei, regulamento, decisão judicial, administrativa ou arbitral,
            aos quais a respectiva parte esteja vinculada; (c) não exigem qualquer consentimento ação ou autorização, prévia ou posterior, de
            terceiros;
            <br>
            <br>
            c. Este Termo Constitutivo é validamente celebrado e constitui obrigação legal, válida, vinculante e exequível, de acordo com os seus
            termos;
            <br>
            <br>
            d. Está apta a cumprir as obrigações ora previstas neste Termo Constitutivo e agirá em relação às mesmas de boa-fé e com lealdade;
            <br>
            <br>
            e. Não se encontra em estado de necessidade ou sob coação para celebrar este Termo Constitutivo e/ou quaisquer contratos e compromissos a
            ela relacionados e acessórios; e
            <br>
            <br>
            f. É devidamente estruturada, qualificada e capacitada para entender a estrutura financeira e jurídica objeto deste Termo Constitutivo.
            <br>
        </p>

        <h4>5 DO ATRASO NO PAGAMENTO E ENCARGOS MORATÓRIOS </h4>
        <p>
            Na hipótese de inadimplemento ou mora dos valores devidos no âmbito deste Termo Constitutivo, a Emissora estará obrigada a pagar ao
            titular, cumulativamente, além da quantia correspondente à dívida em aberto, os seguintes encargos:
            <br>
            <br>
            a. Juros remuneratórios nos mesmos percentuais das taxas constantes neste Termo Constitutivo, calculados a partir do vencimento das
            parcelas em aberto até a data do efetivo pagamento;
            <br>
            <br>
            b. Juros de mora à razão de 1% a.m. (um por cento ao mês), calculados a partir do vencimento das parcelas em aberto até a data do efetivo
            pagamento pela Emissora;
            <br>
            <br>
            c. Multa contratual, de natureza não compensatória, de 2% (dois por cento) incidente sobre o montante total atualizado (incluindo juros
            remuneratórios e juros de mora) do valor devido e não pago; e
            <br>
            <br>
            d. Na hipótese do Titular vir a ser compelido a recorrer a meios administrativos ou judiciais para receber os valores devidos no âmbito
            deste Termo Constitutivo, as despesas de cobrança administrativa, limitadas a 10% (dez por cento) sobre o valor do saldo devedor deste
            Termo Constitutivo e, havendo procedimento judicial, custas processuais e honorários advocatícios, estes fixados judicialmente.
            <br>
            <br>
            e. Caso qualquer data de vencimento referente aos pagamentos da Nota Comercial caia em um fim de semana ou feriado nacional, conforme
            tabela Anbima, o prazo para liquidação será prorrogado automaticamente para o primeiro dia útil subsequente, sem que incida sobre os
            valores a pagar quaisquer acréscimos de caráter remuneratório ou moratório.
            <br>
        </p>

        <h4>6 DISPOSIÇÕES GERAIS</h4>
        <p>
            <u style='font-weight: 600;'>Renúncia</u> <br>
            Não se presume a renúncia a qualquer dos direitos decorrentes da Nota Comercial. Desta forma, nenhum atraso, omissão ou liberalidade no
            exercício de qualquer direito, faculdade ou prerrogativa que caiba ao Titular, em razão de qualquer inadimplemento da Emissora,
            prejudicará o exercício de tais direitos, faculdades ou remédios, ou será interpretado como constituindo uma renúncia aos mesmos ou
            concordância com tal inadimplemento, nem constituirá novação ou modificação de quaisquer outras obrigações assumidas pela Emissora neste
            instrumento, ou precedente no tocante a qualquer outro inadimplemento ou atraso.
            <br>
            <br>
            <u style='font-weight: 600;'>Direito ao Recebimento dos Pagamentos </u> <br>
            Terá direito ao recebimento dos valores devidos em relação às Notas Comerciais, seja o pagamento realizado em caráter ordinário ou
            extraordinário, os Titulares das Notas Comerciais constituídos no encerramento do dia útil imediatamente anterior à respectiva data de
            pagamento.
            <br>
            <br>
            <u style='font-weight: 600;'>Título Executivo Extrajudicial e Execução Específica </u> <br>
            Este instrumento e as Notas Comerciais constituem títulos executivos extrajudiciais, nos termos dos incisos I e III do artigo 784 do
            Código de Processo Civil, reconhecendo as Partes desde já que, independentemente de quaisquer outras medidas cabíveis, as obrigações
            assumidas nos termos deste instrumento e com relação às Notas Comerciais estão sujeitas à execução específica, submetendo-se às
            disposições dos artigos 815 e seguintes do Código de Processo Civil, sem prejuízo do direito de declarar o vencimento antecipado das Notas
            Comerciais, nos termos deste instrumento.
            <br>
            <br>
            <u style='font-weight: 600;'>Da Outorga de Poderes </u> <br>
            A Emissora, neste ato, em caráter irrevogável e irretratável, autoriza a central depositária de valores mobiliários a cadastrar o presente
            Termo Constitutivo na Plataforma IMF Digital, para fins de cumprimento do cadastro de instrumento financeiro, bem como criar eventuais
            usuários, se e conforme solicitados de maneira formalizada, para acesso a citada plataforma, em consonância aos seus normativos, bem como
            representá-la perante os demais prestadores de serviço envolvidos na Emissão, inclusive contratá-los em seu nome, desde que a
            obrigatoriedade de pagamento seja do grupo Laqus.
            <br>
            <br>
            <u style='font-weight: 600;'>Irrevogabilidade</u> <br>
            A Nota Comercial e o presente instrumento são celebrados em caráter irrevogável e irretratável, obrigando as partes e seus sucessores a
            qualquer título.
            <br>
            <br>
            <u style='font-weight: 600;'>Cômputo do Prazo </u> <br>
            Exceto se de outra forma especificamente disposto neste instrumento, os prazos estabelecidos no presente instrumento serão computados de
            acordo com a regra prescrita no artigo 132 do Código Civil, sendo excluído o dia do começo e incluído o do vencimento.
            <br>
            <br>
            <u style='font-weight: 600;'>Assinatura Eletrônica </u> <br>
            Para os fins do artigo 10, parágrafo 2º, da Medida Provisória nº 2.200-2, de 24 de agosto de 2001, as Partes acordam e aceitam que este
            instrumento e qualquer aditamento podem ser assinados eletronicamente por meio de Docusign, com certificados digitais emitidos pela
            ICP-Brasil, e tais assinaturas eletrônicas serão legítimas e suficientes para comprovar (i) a identidade de cada representante legal, (ii)
            a vontade de cada Parte em firmar este instrumento e qualquer aditamento, e (iii) a integridade deste instrumento e qualquer alteração.
            <br>
            <br>
            <u style='font-weight: 600;'>Boa-fé e Equidade </u> <br>
            As Partes declaram, mútua e expressamente, que este instrumento foi celebrado respeitando-se os princípios de probidade e de boa-fé, por
            livre, consciente e firme manifestação de vontade das Partes e em perfeita relação de equidade.
            <br>
            <br>
            <u style='font-weight: 600;'>Lei Aplicável </u> <br>
            Este instrumento é regido pelas Leis da República Federativa do Brasil.
            <br>
            <br>
            <u style='font-weight: 600;'>Foro</u> <br>
            Fica eleito o foro da Comarca da Cidade de São Paulo, Estado de São Paulo, para dirimir quaisquer dúvidas ou controvérsias oriundas deste
            instrumento, com renúncia a qualquer outro, por mais privilegiado que seja.
            <br>
        </p>

        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>
        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            PÁGINA DE ASSINATURAS DO TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDeSerie}
            EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE 0001, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
        </p>

        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>${razaoSocial}</span> <br>
            <span style='font-style: italic;'>Na qualidade de Emissora</span>
        </p>
        <p style='text-align: center; padding-top: 80px;'>
            <u>________________________________________________________________________________________</u> <br>
            <span style='font-weight: 700;'>INTRA INVESTIMENTOS DISTRIBUIDORA DE TITULOS E
                VALORES MOBILIARIOS LTDA
            </span> <br>
            <span style='font-style: italic;'>Na qualidade de Escriturador
            </span>
        </p>

        <p style='text-align: left; font-weight: 700; padding-top: 100px;'>TESTEMUNHAS: </p>
        <div style='display: flex; justify-content: space-around;'>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
            <p style='text-align: center; padding-top: 50px;'>
                <u>_____________________________________________________</u> <br>
                <span style='font-weight: 700;'>Nome
                </span> <br>
                <span style='font-style: italic;'>CPF:
                </span>
            </p>
        </div>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            ANEXO I – MODELO DE BOLETIM DE SUBSCRIÇÃO DAS NOTAS COMERCIAIS
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>BOLETIM DE SUBSCRIÇÃO DA ${numeroDeSerie} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE ${numeroDeSerie}, PARA COLOCAÇÃO
                            PRIVADA, DO(A) EMISSOR(A) ${razaoSocial}
                        </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>CARACTERÍSTICAS DA EMISSÃO </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        Emissão, pela <span style='font-weight: 600;'>${razaoSocial}</span>,
                        pessoa jurídica situada na Rua ${emissorRua}, ${emissorNumero}, Bairro ${emissorBairro}, Cidade de ${emissorCidade}, SP, CEP: 08150166, inscrita no CNPJ/ME sob o nº
                        ${cnpjEmissor} ('Companhia'), de 12 notas comerciais, com valor nominal unitário de R\$ ${valorTotalDaEmissao} e vencimento em ${dataDoVencimento},
                        da sua 80551 emissão ('Notas Comerciais' e 'Emissão').
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>QUALIFICAÇÃO DO SUBSCRITOR </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nome / Razão Social:</span> <br>
                        ${investidorRazaoSocial}
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>CNPJ/ME: </span> <br>
                        ${investidorCnpj}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Endereço:</span> <br>
                        ${investidorRua}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº:</span>
                        ${investidorNumero}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>Complemento: </span> <br>
${emissorComplemento}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Bairro: </span> <br>
                        ${investidorBairro}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>CEP:</span> <br>
                        ${investidorCep}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Cidade: </span> <br>
                       ${investidorCidade}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>U.F.:</span>
                        ${investidorUF}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>País: </span> <br>
                        Brasil
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Telefone: </span> <br>
                        ${investidorTelefone}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px; text-align: center;'>
                        <span style='font-weight: 600;'>NOTAS COMERCIAIS SUBSCRITAS: </span>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>QUANTIDADE:</span> <br>
                        ${quantidade}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>PREÇO TOTAL UNITÁRIO:</span> <br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                    <td colspan='2' style='padding: 10px;'>
                        <span style='font-weight: 600;'>VALOR EM R\$: </span> <br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td colspan='6' style='padding: 10px;'>
                        O Preço Total Unitário será mantido em cada data de integralização, caso distintas. A rentabilidade se inicia apenas após a
                        efetiva integralização.
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            FORMA SUBSCRIÇÃO E INTEGRALIZAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>MEIO DE INTEGRALIZAÇÃO: </span> <br><br>
                        [X] Transferência Eletrônica Disponível (TED) ou PIX, na conta bancária da Emissora, abaixo identificada. <br>
                        [ ] Depositário Central (Laqus) <br>
                        [ ] Dação em Pagamento
                    </td>
                    <td colspan='3' style='padding: 10px;'>
                        <span style='font-weight: 600;'>DATA DE INTEGRALIZAÇÃO: </span> <br><br>
                        A efetiva integralização deverá ser realizada em até 30 (trinta) dias corridos, contados da data de assinatura do presente
                        Boletim de Subscrição
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DA EMISSORA
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        ${dadosBancariosDoEmissorbanco}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        ${dadosBancariosDoEmissorcodigo}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        ${dadosBancariosDoEmissoragencia}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        ${dadosBancariosDoEmissorcontaCorrente}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
            CONTA BANCÁRIA DO ESCRITURADOR, CUSTODIANTE E AGENTE DE LIQUIDAÇÃO
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Banco </span> <br><br>
                        Santander
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº do Banco</span> <br><br>
                        033
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Agência</span> <br><br>
                        2271
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Nº da Conta </span> <br><br>
                        13065375-2
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor</span> <br><br>
                        R\$ ${valorTotalDaEmissao}
                    </td>
                </tr>
            </tbody>
        </table>

        <p style='text-align: center; font-weight: 700; padding-top: 100px; text-transform: uppercase;'>
        </p>

        <table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        Declaro, para todos os fins, que estou de acordo com as condições expressas no presente boletim, bem como declaro ter obtido
                        exemplar do Termo Constitutivo.

                        <p style='text-align: center; font-weight: 700; padding-top: 100px;'>São Paulo, ${dataDaEmissao}</p>

                        <p style='text-align: center; padding-top: 80px;'>
                            <u>________________________________________________________________________________________</u> <br>
                            <span style='font-style: italic;'>Assinatura do Subscritor ou Representante Legal</span>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
<table border='1' style='width: 100%;'>
            <tbody>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Número de Parcelas: </span><br>
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Data </span> <br>
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Juros </span> <br>
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Amortização </span> <br>
                    </td>
                </tr>
                <tr style='text-align: left;'>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Saldo Final: </span> <br>
                        ${parcela}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Total da Emissão: </span> <br>
                        ${data}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Valor Nominal Unitário: </span> <br>
                        ${juros}
                    </td>
                    <td style='padding: 10px;'>
                        <span style='font-weight: 600;'>Quantidade: </span> <br>
                        ${amortizacao}
                    </td>
                </tr>
                
            </tbody>
        </table>
    </div>
    <!-- Outras tabelas com estilos semelhantes -->
</body>

</html>",

"listSignatory": [
{
"type": 8,
"name": "Rodrigo",
"email": "dev02@needtoken.com.br",
"document": "69.053.571/0001-90",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1
},
{
"type": 9,
"name": "Rodrigo",
"email": "rodrigo.pedroso@live.com",
"document": "34650965000141",
"birthDate": "1980-11-23",
"signatureWithCertificate": false,
"signatureType": 1
}
]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateDocumentByHtmlTabelaMat',
      apiUrl:
          '${FlixSignGroup.baseUrl}/document/service/v1/api/Document/CreateDocumentByHtml',
      callType: ApiCallType.POST,
      headers: {
        'ClientId': 'Flixsign',
        'Authorization':
            'Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJncm91cHNpZCI6IkZsaXhzaWduIiwibmFtZWlkIjoiNzYiLCJ1bmlxdWVfbmFtZSI6IkRldiAwMiIsImVtYWlsIjoiZGV2MDJAbmVlZHRva2VuLmNvbS5iciIsIklzUm9vdCI6IkZhbHNlIiwiQ29udGFJZCI6ImNiOGUzNGJmLTIzMTEtNDEzZC03ODYwLTA4ZGJlYWE0Y2YwMyIsIklzQWRtaW4iOiJGYWxzZSIsIklzT3BlcmF0b3IiOiJGYWxzZSIsIlR5cGUiOiIxIiwiQ3VzdG9tZXJJZCI6IjM2IiwiU3VwcGxpZXJJZCI6IjAiLCJCYW5rSWQiOiIwIiwiSXNVc2VUZXJtIjoiVHJ1ZSIsIlVzZXJEb2N1bWVudCI6IjQ3LjA1My4yMTkvMDAwMS0xMiIsIkN1c3RvbWVyIjpbIkxpc3QiLCJHZXQiXSwiRG9jdW1lbnQiOlsiTGlzdCIsIkdldCIsIkRlbGV0ZSIsIlNhdmUiXSwibmJmIjoxNzAyNjczNzAxLCJleHAiOjE3MDI3MDk3MDEsImlhdCI6MTcwMjY3MzcwMX0.L5f4Ar-zsaDFYXhWFtDUMEd-OWO4WL-aDxVOJhANeYEJWtGCr0MRS3wTqC4HrrTsQYyFqYNTsz7U75Yipyo1aA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? fileHash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class SendMailSignDocumentCall {
  Future<ApiCallResponse> call({
    String? fileHash = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SendMailSignDocument',
      apiUrl:
          '${FlixSignGroup.baseUrl}/document/service/v1/api/Document/SendMailSignDocument/${fileHash}',
      callType: ApiCallType.POST,
      headers: {
        'ClientId': 'Flixsign',
        'Authorization':
            'Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJncm91cHNpZCI6IkZsaXhzaWduIiwibmFtZWlkIjoiNzYiLCJ1bmlxdWVfbmFtZSI6IkRldiAwMiIsImVtYWlsIjoiZGV2MDJAbmVlZHRva2VuLmNvbS5iciIsIklzUm9vdCI6IkZhbHNlIiwiQ29udGFJZCI6ImNiOGUzNGJmLTIzMTEtNDEzZC03ODYwLTA4ZGJlYWE0Y2YwMyIsIklzQWRtaW4iOiJGYWxzZSIsIklzT3BlcmF0b3IiOiJGYWxzZSIsIlR5cGUiOiIxIiwiQ3VzdG9tZXJJZCI6IjM2IiwiU3VwcGxpZXJJZCI6IjAiLCJCYW5rSWQiOiIwIiwiSXNVc2VUZXJtIjoiVHJ1ZSIsIlVzZXJEb2N1bWVudCI6IjQ3LjA1My4yMTkvMDAwMS0xMiIsIkN1c3RvbWVyIjpbIkxpc3QiLCJHZXQiXSwiRG9jdW1lbnQiOlsiTGlzdCIsIkdldCIsIkRlbGV0ZSIsIlNhdmUiXSwibmJmIjoxNzAyNjczNzAxLCJleHAiOjE3MDI3MDk3MDEsImlhdCI6MTcwMjY3MzcwMX0.L5f4Ar-zsaDFYXhWFtDUMEd-OWO4WL-aDxVOJhANeYEJWtGCr0MRS3wTqC4HrrTsQYyFqYNTsz7U75Yipyo1aA',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetornoDocCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retornoDoc',
      apiUrl:
          '${FlixSignGroup.baseUrl}/document/service/v1/api/Document/GetEnvelope/${id}',
      callType: ApiCallType.GET,
      headers: {
        'ClientId': 'Flixsign',
        'Authorization':
            'Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJncm91cHNpZCI6IkZsaXhzaWduIiwibmFtZWlkIjoiNzYiLCJ1bmlxdWVfbmFtZSI6IkRldiAwMiIsImVtYWlsIjoiZGV2MDJAbmVlZHRva2VuLmNvbS5iciIsIklzUm9vdCI6IkZhbHNlIiwiQ29udGFJZCI6ImNiOGUzNGJmLTIzMTEtNDEzZC03ODYwLTA4ZGJlYWE0Y2YwMyIsIklzQWRtaW4iOiJGYWxzZSIsIklzT3BlcmF0b3IiOiJGYWxzZSIsIlR5cGUiOiIxIiwiQ3VzdG9tZXJJZCI6IjM2IiwiU3VwcGxpZXJJZCI6IjAiLCJCYW5rSWQiOiIwIiwiSXNVc2VUZXJtIjoiVHJ1ZSIsIlVzZXJEb2N1bWVudCI6IjQ3LjA1My4yMTkvMDAwMS0xMiIsIkN1c3RvbWVyIjpbIkxpc3QiLCJHZXQiXSwiRG9jdW1lbnQiOlsiTGlzdCIsIkdldCIsIkRlbGV0ZSIsIlNhdmUiXSwibmJmIjoxNzAyNjczNzAxLCJleHAiOjE3MDI3MDk3MDEsImlhdCI6MTcwMjY3MzcwMX0.L5f4Ar-zsaDFYXhWFtDUMEd-OWO4WL-aDxVOJhANeYEJWtGCr0MRS3wTqC4HrrTsQYyFqYNTsz7U75Yipyo1aA',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? dataDocuments(dynamic response) => getJsonField(
        response,
        r'''$.data.documents''',
        true,
      ) as List?;
  String? fileHash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.documents[:].fileHash''',
      ));
  String? fileHashEncrypted(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.documents[:].fileHashEncrypted''',
      ));
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
}

class DownloadDocCall {
  Future<ApiCallResponse> call({
    String? fileHash = '',
    String? fileHashEncrypted = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'downloadDoc',
      apiUrl:
          '${FlixSignGroup.baseUrl}/document/service/v1/api/Document/Download/${fileHash}/${fileHashEncrypted}',
      callType: ApiCallType.GET,
      headers: {
        'ClientId': 'Flixsign',
        'Authorization':
            'Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJncm91cHNpZCI6IkZsaXhzaWduIiwibmFtZWlkIjoiNzYiLCJ1bmlxdWVfbmFtZSI6IkRldiAwMiIsImVtYWlsIjoiZGV2MDJAbmVlZHRva2VuLmNvbS5iciIsIklzUm9vdCI6IkZhbHNlIiwiQ29udGFJZCI6ImNiOGUzNGJmLTIzMTEtNDEzZC03ODYwLTA4ZGJlYWE0Y2YwMyIsIklzQWRtaW4iOiJGYWxzZSIsIklzT3BlcmF0b3IiOiJGYWxzZSIsIlR5cGUiOiIxIiwiQ3VzdG9tZXJJZCI6IjM2IiwiU3VwcGxpZXJJZCI6IjAiLCJCYW5rSWQiOiIwIiwiSXNVc2VUZXJtIjoiVHJ1ZSIsIlVzZXJEb2N1bWVudCI6IjQ3LjA1My4yMTkvMDAwMS0xMiIsIkN1c3RvbWVyIjpbIkxpc3QiLCJHZXQiXSwiRG9jdW1lbnQiOlsiTGlzdCIsIkdldCIsIkRlbGV0ZSIsIlNhdmUiXSwibmJmIjoxNzAyNjczNzAxLCJleHAiOjE3MDI3MDk3MDEsImlhdCI6MTcwMjY3MzcwMX0.L5f4Ar-zsaDFYXhWFtDUMEd-OWO4WL-aDxVOJhANeYEJWtGCr0MRS3wTqC4HrrTsQYyFqYNTsz7U75Yipyo1aA',
      },
      params: {
        'fileHash': fileHash,
        'fileHashEncrypted': fileHashEncrypted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End FlixSign Group Code

/// Start Google Sheet Group Code

class GoogleSheetGroup {
  static String baseUrl =
      'https://sheets.googleapis.com/v4/spreadsheets/1Q-qOPhcqaXno3r3RCNxR_SRV2a_cn0Xb1acJCiW8C9Y';
  static Map<String, String> headers = {};
  static GETValorCall gETValorCall = GETValorCall();
  static GETValorCopyCall gETValorCopyCall = GETValorCopyCall();
  static GRAVAValorCall gRAVAValorCall = GRAVAValorCall();
  static GRAVAValorCopyCall gRAVAValorCopyCall = GRAVAValorCopyCall();
}

class GETValorCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET Valor',
      apiUrl: '${GoogleSheetGroup.baseUrl}/values/PRICE!A15:F120',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ya29.a0AfB_byD3WclbSNQLcEVhGpiBTLxkm5964lHtTXqPhdumSQZ1cqGsaNeerYL1S5Ebilpo6iYUW-etegBNmJnxQUzA0JZJdT-H30_EC4IpmFsiIfbD0jrE5wUZrLUU-eg41O9qojKMI9Ekq6tN5fJBrUzZxsflFrkQUnaqwgaCgYKARISARISFQHGX2MiLSSDtk7UL5DPKIMUZJHdeA0173',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class GETValorCopyCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET Valor Copy',
      apiUrl:
          '${GoogleSheetGroup.baseUrl}/values/PRICE!A15:F120?key=AIzaSyDEDmg53zK7oA2T5N8Vk-_6fJ5C12MrUyo',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class GRAVAValorCall {
  Future<ApiCallResponse> call({
    String? valordoEmprestimo = '',
    String? duracao = '',
    String? carencia = '',
    String? taxa = '',
    String? authtoken = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GRAVAValorCall',
        'variables': {
          'valordoEmprestimo': valordoEmprestimo,
          'duracao': duracao,
          'carencia': carencia,
          'taxa': taxa,
          'authtoken': authtoken,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GRAVAValorCopyCall {
  Future<ApiCallResponse> call({
    double? valorDoEmprestimo,
    int? duracao,
    int? carencia,
    String? taxa = '',
    String? authtoken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "range": "PRICE!E6:E12",
  "majorDimension": "COLUMNS",
  "values": [
    [
      ${valorDoEmprestimo},
      null,
      ${duracao},
      ${carencia},
      null,
      null,
      "${taxa}%"
    ]
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GRAVA  Valor  Copy',
      apiUrl:
          '${GoogleSheetGroup.baseUrl}/values/PRICE!E6:E12?valueInputOption=USER_ENTERED',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer ya29.a0AfB_byDbV9jMMpwc8WHDFAJ-4GT3uysIPeBM1emLCPrRLjd3GQCwKtFH-Yi1a-vX-Gk6lFp39zhZn__KRluypGfenKgOeUrMpAHUfv7-19Vp-IfF-xW2y6TXUe1BwDPhQKp_j48RaKuDScK3M8SSpie2fULor0RLWaJjaCgYKAawSARISFQHGX2MiaFvnBUsMoKFqIlwOFv_TkQ0171',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Google Sheet Group Code

/// Start Gsheets Script Group Code

class GsheetsScriptGroup {
  static String baseUrl = 'http://';
  static Map<String, String> headers = {};
  static GsheetGetCall gsheetGetCall = GsheetGetCall();
  static GsheetpostCall gsheetpostCall = GsheetpostCall();
}

class GsheetGetCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Gsheet get',
      apiUrl:
          '${GsheetsScriptGroup.baseUrl}script.google.com/macros/s/AKfycbwC0neyvAxSi_mhSbs4R_aPPN7H69Dv0AjvpMyV-gdxVY4eVdFggY-_zU9qqwtyMEEr/exec',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$[:].Data''',
        true,
      ) as List?;
  List? juros(dynamic response) => getJsonField(
        response,
        r'''$[:].Juros''',
        true,
      ) as List?;
  List? amortizacao(dynamic response) => getJsonField(
        response,
        r'''$[:].Amortização''',
        true,
      ) as List?;
  List? apiGsheetScript(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  List? pagamento(dynamic response) => getJsonField(
        response,
        r'''$[:].Pagamento''',
        true,
      ) as List?;
}

class GsheetpostCall {
  Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{"E6": "10000",
    "E8": "12",
    "E9": "2",
    "E12": "5"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Gsheetpost',
      apiUrl:
          '${GsheetsScriptGroup.baseUrl}script.google.com/macros/s/AKfycbwMOBf7J0E3BQnErE1Pe0713zz6jwBKLuWCvOpbuYj5Z9of-Ig--zPzqOKzuXe-r-2w/exec',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Gsheets Script Group Code

/// Start gst Group Code

class GstGroup {
  static String baseUrl = 'https://sheets.googleapis.com';
  static Map<String, String> headers = {};
  static PutCall putCall = PutCall();
}

class PutCall {
  Future<ApiCallResponse> call({
    String? valueInputOption = '',
  }) async {
    final ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'put',
      apiUrl:
          '${GstGroup.baseUrl}/v4/spreadsheets/1Q-qOPhcqaXno3r3RCNxR_SRV2a_cn0Xb1acJCiW8C9Y/values/PRICE!E6:E12',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End gst Group Code

class AutenticandoCall {
  static Future<ApiCallResponse> call({
    String? apiKey = '',
  }) async {
    final ffApiRequestBody = '''
{
  "apiKey": "${apiKey}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Autenticando',
      apiUrl: 'https://auth-api.hml.cloud.laqus.io/v1/sessions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? api(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.apiKey''',
      ));
  static String? sessionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionId''',
      ));
  static String? sessionExpiresIn(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sessionExpiresIn''',
      ));
}

class PrimeiroAcessoCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'primeiro Acesso',
      apiUrl: 'https://auth-api.hml.cloud.laqus.io/v1/identities',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic laqusApiKey(dynamic response) => getJsonField(
        response,
        r'''$.apiKey''',
      );
}

class SimulacoesFuncionandoCall {
  static Future<ApiCallResponse> call({
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    double? valorNominalUnitario,
    String? vencimentoDa1aParcela = '',
    int? quantidade,
    double? percentualDoIndexador,
    String? indexador = '',
    String? convencao = '',
    String? jurosPeriodicidade = '',
    String? amortizacaoPeriodicidade = '',
    String? tipoDePagamento = '',
  }) async {
    final ffApiRequestBody = '''
{
  "dataDaEmissao": "2023-10-12T00:00:00.000Z",
  "dataDoVencimento": "2027-10-21T00:00:00.000Z",
  "valorNominalUnitario": 1000,
  "quantidade": 1000,
  "dadosFinanceiros": {
    "valorDosJurosRemunetorios": 2,
    "percentualDoIndexador": 1,
    "indexador": "Pre",
    "convencao": "Convencao_30_360",
    "PagamentoSimulacao": {
      "TipoDePagamentoV1": "TabelaSac",
      "TabelaSacV1": {
          "TipoDePercentualSobreV1": "Principal",
          "jurosVencimentoDa1aParcela": "2023-11-14T00:00:00.000Z",
          "TipoDePeriodicidadeV1": "Mensal",
          "TipoDePercentualSobreV1": "Principal",
          "amortizacaoVencimentoDa1aParcela": "2023-11-14T00:00:00.000Z",
          "TipoDePeriodicidadeV1": "Mensal"
      }
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SimulacoesFuncionando',
      apiUrl:
          'https://formalizacao-api.hml.cloud.laqus.io/v1/simulacoes/fluxos-financeiros',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'Authorization':
            'Bearer 38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SimulacoesTesteCall {
  static Future<ApiCallResponse> call({
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    double? valorNominalUnitario,
    double? quantidade,
    double? valorDosJurosRemunetorios,
    double? percentualDoIndexador,
    String? indexador = '',
    String? convencao = '',
    String? tipoDePagamento = '',
    String? percentualSobre = '',
    String? vencimentoDa1aParcela = '',
    String? periodicidade = '',
    String? bearer = 'Bearer',
  }) async {
    final ffApiRequestBody = '''
{
  "dataDaEmissao": "${dataDaEmissao}",
  "dataDoVencimento": "${dataDoVencimento}",
  "valorNominalUnitario": ${valorNominalUnitario},
  "quantidade": 1,
  "dadosFinanceiros": {
    "valorDosJurosRemunetorios": ${valorDosJurosRemunetorios},
    "percentualDoIndexador": ${percentualDoIndexador},
    "indexador": "${indexador}",
    "convencao": "${convencao}",
    "pagamento": {
      "tipoDePagamento": "TabelaPrice",
      "TabelaPrice": {
        "percentualSobre": "Principal",
        "vencimentoDa1aParcela": "${vencimentoDa1aParcela}",
        "periodicidade": "${periodicidade}"
      }
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SimulacoesTeste',
      apiUrl:
          'https://formalizacao-api.hml.cloud.laqus.io/v1/simulacoes/fluxos-financeiros',
      callType: ApiCallType.POST,
      headers: {
        'apiKey':
            'E+HnG5lfWAmtf2mxqJ0634gQf9GjgPyf2xkh97O6LffcPheiluVUWxwgW9MmUefJ',
        'Authorization':
            'Bearer 38784B764D5879316A57736E63737A415770727166714947337539702F6258304A554C6634434F7174437A6B6A51784C6256715174645A2F484A53647458762F',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? retornoAPI(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? data(dynamic response) => (getJsonField(
        response,
        r'''$[:].data''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? valorAquisicao(dynamic response) => (getJsonField(
        response,
        r'''$[:].valorAquisicao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? juros(dynamic response) => (getJsonField(
        response,
        r'''$[:].juros''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? taxaDeJuros(dynamic response) => (getJsonField(
        response,
        r'''$[:].taxaDeJuros''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? principal(dynamic response) => (getJsonField(
        response,
        r'''$[:].principal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? porcentagemAmortizacao(dynamic response) =>
      (getJsonField(
        response,
        r'''$[:].porcentagemAmortizacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? indexador(dynamic response) => (getJsonField(
        response,
        r'''$[:].indexador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? valorParcela(dynamic response) => (getJsonField(
        response,
        r'''$[:].valorParcela''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class APIDocumentoPDFCall {
  static Future<ApiCallResponse> call({
    String? cnpjemissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissa = '',
    String? valorNominalUnitario = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? bancoEscriturador = '',
    String? contaEscriturador = '',
    String? repactuacao = '',
    String? detalhesRepactuacao = '',
    String? classificacaoDeRiscoV1 = '',
    String? utilizaDataDeAnuncioDaDistribuicao = '',
    String? emissorV1NBanco = '',
    String? emissorV1Banco = '',
    String? emissorV1Agencia = '',
    String? emissorV1conta = '',
    String? dadosFinanceirosV1valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1Periodo = '',
    String? dadosFinanceirosV1PercentualDoIndexador = '',
    String? dadosFinanceirosV1Indexador = '',
    String? dadosFinanceirosV1Convencao = '',
    String? pagamentoV1InicioRentabilidadeV1 = '',
    String? pagamentoV1TabelaPriceVencimentoDa1aParcela = '',
    String? tabelaPriceV1Periodicidade = '',
    String? pagamentoV1realizaAmortizacaoExtraordinaria = '',
    String? pagamentoV1realizaAmortizacaoExtraordinariaResgateAntecipadoFacultativoTotal =
        '',
    String? pagamentoV1resgateAntecipadoCompulsorioTotal = '',
    String? cadastroDeEmissorLogradouro = '',
    String? cadastroDeEmissorNumero = '',
    String? cadastroDeEmissorBairro = '',
    String? cadastroDeEmissorCidade = '',
    String? cadastroDeEmissorUf = '',
    String? cadastroDeEmissorCep = '',
    String? assinantesTermoConstitutivoV1EmissorV1nome = '',
    String? assinantesTermoConstitutivoV1EmissorV1telefones = '',
    String? assinantesTermoConstitutivoV1EmissorV1email = '',
    String? emissorV1Nome = '',
    String? investidorV1RazaoSocial = '',
    String? investidorV1CnpjCpf = '',
    String? investidorV1EnderecoRua = '',
    String? investidorV1EnderecoNumero = '',
    String? investidorV1EnderecoComplemento = '',
    String? investidorV1EnderecoBairro = '',
    String? investidorV1EnderecoCep = '',
    String? investidorV1EnderecoCidade = '',
    String? investidorV1EnderecoEstado = '',
    String? investidorV1Telefone = '',
    String? valorTotalDaEmissao = '',
    String? dadosBancariosDoEmissorBanco = '',
    String? dadosBancariosDoEmissorCodigo = '',
    String? dadosBancariosDoEmissorAgencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? digito = '',
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? emissor = '',
    String? cadastroDeEmissorCnpj = '',
    String? agenciaEscriturador = '',
    String? tipoDeDistribuicaoV1 = '',
    String? serieUnica = '',
    String? numdaEmissao = '',
  }) async {
    final ffApiRequestBody = '''
{
  "document": "HwfNdTrIGsAl0nPbBogu",
  "apiKey": "SKE27FQ-MAOUS2Y-VQ2YPLQ-OZ23WCY",
  "format": "pdf",
  "data": {
    "numeroDaEmissao": "numeroDaEmissao",
    "numeroDeSerie": "numeroDeSerie",
    "emissor": "emissor",
    "cnpjemissor": "${cnpjemissor}",
    "dataDaEmissao": "${dataDaEmissao}",
    "dataDoVencimento": "${dataDoVencimento}",
    "valorTotalDaEmissa": "${valorTotalDaEmissa}",
    "valorNominalUnitario": "${valorNominalUnitario}",
    "quantidade": "${quantidade}",
    "custoDaEmissao": "${custoDaEmissao}",
    "BancoEscriturador": "${bancoEscriturador}",
    "Agência Escriturador": "${agenciaEscriturador}",
    "Conta Escriturador": "${contaEscriturador}",
    "repactuacao": "${repactuacao}",
    "detalhesRepactuacao": "${detalhesRepactuacao}",
    "ClassificacaoDeRiscoV1": "${classificacaoDeRiscoV1}",
    "TipoDeDistribuicaoV1": "${tipoDeDistribuicaoV1}",
    "utilizaDataDeAnuncioDaDistribuicao": "${utilizaDataDeAnuncioDaDistribuicao}",
    "EmissorV1NBanco": "${emissorV1NBanco}",
    "EmissorV1Banco": "${emissorV1Banco}",
    "EmissorV1Agencia": "${emissorV1Agencia}",
    "EmissorV1conta": "${emissorV1conta}",
    "DadosFinanceirosV1valorDosJurosRemunetorios": "${dadosFinanceirosV1valorDosJurosRemunetorios}",
    "DadosFinanceirosV1 periodo": "${dadosFinanceirosV1Periodo}",
    "DadosFinanceirosV1percentualDoIndexador": "${dadosFinanceirosV1PercentualDoIndexador}",
    "DadosFinanceirosV1indexador": "${dadosFinanceirosV1Indexador}",
    "DadosFinanceirosV1convencao": "${dadosFinanceirosV1Convencao}",
    "PagamentoV1InicioRentabilidadeV1": "${pagamentoV1InicioRentabilidadeV1}",
    "PagamentoV1tabelaPrice vencimentoDa1aParcela": "${pagamentoV1TabelaPriceVencimentoDa1aParcela}",
    "TabelaPriceV1periodicidade": "${tabelaPriceV1Periodicidade}",
    "PagamentoV1tabelaPricevencimentoDa1aParcela": "${pagamentoV1TabelaPriceVencimentoDa1aParcela}",
    "PagamentoV1realizaAmortizacaoExtraordinaria": "${pagamentoV1realizaAmortizacaoExtraordinaria}",
    "PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal": "${pagamentoV1realizaAmortizacaoExtraordinariaResgateAntecipadoFacultativoTotal}",
    "PagamentoV1resgateAntecipadoCompulsorioTotal": "${pagamentoV1resgateAntecipadoCompulsorioTotal}",
    "cadastro de emissorlogradouro": "${cadastroDeEmissorLogradouro}",
    "cadastrodeemissornumero": "${cadastroDeEmissorNumero}",
    "cadastrodeemissorbairro": "cadastrodeemissorbairro",
    "cadastrodeemissorcidade": "cadastrodeemissorcidade",
    "cadastrodeemissoruf": "cadastrodeemissoruf",
    "cadastrodeemissorcep": "cadastrodeemissorcep",
    "AssinantesTermoConstitutivoV1EmissorV1nome": "AssinantesTermoConstitutivoV1EmissorV1nome",
    "AssinantesTermoConstitutivoV1EmissorV1telefones": "AssinantesTermoConstitutivoV1EmissorV1telefones",
    "AssinantesTermoConstitutivoV1EmissorV1email": "AssinantesTermoConstitutivoV1EmissorV1email",
    "serieUnica": "serieUnica",
    "NumdaEmissao": "NumdaEmissao",
    "cadastrodeemissorlogradouro": "cadastrodeemissorlogradouro",
    "cadastro de emissoruf": "cadastro de emissoruf",
    "InvestidorV1razaoSocial": "InvestidorV1razaoSocial",
    "InvestidorV1cnpjCpf": "InvestidorV1cnpjCpf",
    "InvestidorV1enderecorua": "InvestidorV1enderecorua",
    "InvestidorV1endereconumero": "InvestidorV1endereconumero",
    "InvestidorV1enderecocomplemento": "InvestidorV1enderecocomplemento",
    "InvestidorV1endereco bairro": "InvestidorV1endereco bairro",
    "InvestidorV1enderecocep": "InvestidorV1enderecocep",
    "InvestidorV1enderecocidade": "InvestidorV1enderecocidade",
    "InvestidorV1enderecoestado": "InvestidorV1enderecoestado",
    "InvestidorV1telefone": "InvestidorV1telefone",
    "valorTotalDaEmissao": "valorTotalDaEmissao",
    "dadosBancariosDoEmissorbanco": "dadosBancariosDoEmissorbanco",
    "dadosBancariosDoEmissorcodigo": "dadosBancariosDoEmissorcodigo",
    "dadosBancariosDoEmissoragencia": "dadosBancariosDoEmissoragencia",
    "dadosBancariosDoEmissorcontaCorrente": "dadosBancariosDoEmissorcontaCorrente",
    "dadosBancariosDoEmissorcontaCorrentedigito": "dadosBancariosDoEmissorcontaCorrentedigito"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Documento PDF',
      apiUrl: 'https://app.documentero.com/api',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? dataDowloard(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class ApidocumenterotcCall {
  static Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? emissor = '',
    String? cnpjemissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? valorNominalUnitario = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? bancoEscriturador = '',
    String? agenciaEscriturador = '',
    String? contaEscriturador = '',
    String? repactuacao = '',
    String? detalhesRepactuacao = '',
    String? classificacaoDeRiscoV1 = '',
    String? tipoDeDistribuicaoV1 = '',
    String? utilizaDataDeAnuncioDaDistribuicao = '',
    String? emissorV1NBanco = '',
    String? emissorV1Banco = '',
    String? emissorV1Agencia = '',
    String? emissorV1conta = '',
    String? dadosFinanceirosV1valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? dadosFinanceirosV1indexador = '',
    String? dadosFinanceirosV1convencao = '',
    String? pagamentoV1InicioRentabilidadeV1 = '',
    String? pagamentoV1tabelaPricevencimentoDa1aParcela = '',
    String? tabelaPriceV1periodicidade = '',
    String? pagamentoV1realizaAmortizacaoExtraordinaria = '',
    String? pagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal =
        '',
    String? pagamentoV1resgateAntecipadoCompulsorioTotal = '',
    String? cadastrodeemissorlogradouro = '',
    String? cadastrodeemissornumero = '',
    String? cadastrodeemissorbairro = '',
    String? cadastrodeemissorcidade = '',
    String? cadastrodeemissoruf = '',
    String? cadastrodeemissorcep = '',
    String? assinantesTermoConstitutivoV1EmissorV1nome = '',
    String? assinantesTermoConstitutivoV1EmissorV1telefones = '',
    String? assinantesTermoConstitutivoV1EmissorV1email = '',
    String? serieUnica = '',
    String? numdaEmissao = '',
    String? investidorV1razaoSocial = '',
    String? investidorV1cnpjCpf = '',
    String? investidorV1enderecorua = '',
    String? investidorV1endereconumero = '',
    String? investidorV1enderecocomplemento = '',
    String? investidorV1enderecobairro = '',
    String? investidorV1enderecocep = '',
    String? investidorV1enderecocidade = '',
    String? investidorV1enderecoestado = '',
    String? investidorV1telefone = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
  }) async {
    final ffApiRequestBody = '''
{
  "document": "HJQr4fQpFjD6L5RcNCyY",
  "apiKey": "SKE27FQ-MAOUS2Y-VQ2YPLQ-OZ23WCY",
  "format": "docx",
  "data": {
    "numeroDaEmissao": "${numeroDaEmissao}",
    "numeroDeSerie": "${numeroDeSerie}",
    "emissor": "${emissor}",
    "cnpjemissor": "${cnpjemissor}",
    "dataDaEmissao": "${dataDaEmissao}",
    "dataDoVencimento": "${dataDoVencimento}",
    "valorTotalDaEmissao": "${valorTotalDaEmissao}",
    "valorNominalUnitario": "${valorNominalUnitario}",
    "quantidade": "${quantidade}",
    "custoDaEmissao": "${custoDaEmissao}",
    "BancoEscriturador": "${bancoEscriturador}",
    "AgênciaEscriturador": "AgênciaEscriturador",
    "ContaEscriturador": "${contaEscriturador}",
    "repactuacao": "${repactuacao}",
    "detalhesRepactuacao": "${detalhesRepactuacao}",
    "ClassificacaoDeRiscoV1": "${classificacaoDeRiscoV1}",
    "TipoDeDistribuicaoV1": "${tipoDeDistribuicaoV1}",
    "utilizaDataDeAnuncioDaDistribuicao": "${utilizaDataDeAnuncioDaDistribuicao}",
    "EmissorV1NBanco": "${emissorV1NBanco}",
    "EmissorV1Banco": "${emissorV1Banco}",
    "EmissorV1Agencia": "${emissorV1Agencia}",
    "EmissorV1conta": "${emissorV1conta}",
    "DadosFinanceirosV1valorDosJurosRemunetorios": "${dadosFinanceirosV1valorDosJurosRemunetorios}",
    "DadosFinanceirosV1periodo": "${dadosFinanceirosV1periodo}",
    "DadosFinanceirosV1percentualDoIndexador": "${dadosFinanceirosV1percentualDoIndexador}",
    "DadosFinanceirosV1indexador": "${dadosFinanceirosV1indexador}",
    "DadosFinanceirosV1convencao": "${dadosFinanceirosV1convencao}",
    "PagamentoV1InicioRentabilidadeV1": "${pagamentoV1InicioRentabilidadeV1}",
    "PagamentoV1tabelaPricevencimentoDa1aParcela": "${pagamentoV1tabelaPricevencimentoDa1aParcela}",
    "TabelaPriceV1periodicidade": "${tabelaPriceV1periodicidade}",
    "PagamentoV1realizaAmortizacaoExtraordinaria": "${pagamentoV1realizaAmortizacaoExtraordinaria}",
    "PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal": "${pagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal}",
    "PagamentoV1resgateAntecipadoCompulsorioTotal": "${pagamentoV1resgateAntecipadoCompulsorioTotal}",
    "cadastrodeemissorlogradouro": "${cadastrodeemissorlogradouro}",
    "cadastrodeemissornumero": "${cadastrodeemissornumero}",
    "cadastrodeemissorbairro": "${cadastrodeemissorbairro}",
    "cadastrodeemissorcidade": "${cadastrodeemissorcidade}",
    "cadastrodeemissoruf": "${cadastrodeemissoruf}",
    "cadastrodeemissorcep": "${cadastrodeemissorcep}",
    "AssinantesTermoConstitutivoV1EmissorV1nome": "${assinantesTermoConstitutivoV1EmissorV1nome}",
    "AssinantesTermoConstitutivoV1EmissorV1telefones": "${assinantesTermoConstitutivoV1EmissorV1telefones}",
    "AssinantesTermoConstitutivoV1EmissorV1email": "${assinantesTermoConstitutivoV1EmissorV1email}",
    "serieUnica": "${serieUnica}",
    "NumdaEmissao": "${numeroDaEmissao}",
    "InvestidorV1razaoSocial": "${investidorV1razaoSocial}",
    "InvestidorV1cnpjCpf": "${investidorV1cnpjCpf}",
    "InvestidorV1enderecorua": "${investidorV1enderecorua}",
    "InvestidorV1endereconumero": "${investidorV1endereconumero}",
    "InvestidorV1enderecocomplemento": "${investidorV1enderecocomplemento}",
    "InvestidorV1enderecobairro": "${investidorV1enderecobairro}",
    "InvestidorV1enderecocep": "${investidorV1enderecocep}",
    "InvestidorV1enderecocidade": "${investidorV1enderecocidade}",
    "InvestidorV1enderecoestado": "${investidorV1enderecoestado}",
    "InvestidorV1telefone": "${investidorV1telefone}",
    "dadosBancariosDoEmissorbanco": "${dadosBancariosDoEmissorbanco}",
    "dadosBancariosDoEmissorcodigo": "${dadosBancariosDoEmissorcodigo}",
    "dadosBancariosDoEmissoragencia": "${dadosBancariosDoEmissoragencia}",
    "dadosBancariosDoEmissorcontaCorrente": "${dadosBancariosDoEmissorcontaCorrente}",
    "dadosBancariosDoEmissorcontaCorrentedigito": "${dadosBancariosDoEmissorcontaCorrentedigito}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'APIDOCUMENTEROTC',
      apiUrl: 'https://app.documentero.com/api',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DFSDocumentoAPartirDoTemplateWORDxCall {
  static Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? emissor = '',
    String? cnpjemissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? valorNominalUnitario = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? bancoEscriturador = '',
    String? agenciaEscriturador = '',
    String? contaEscriturador = '',
    String? repactuacao = '',
    String? detalhesRepactuacao = '',
    String? classificacaoDeRiscoV1 = '',
    String? tipoDeDistribuicaoV1 = '',
    String? utilizaDataDeAnuncioDaDistribuicao = '',
    String? emissorV1NBanco = '',
    String? emissorV1Banco = '',
    String? emissorV1Agencia = '',
    String? emissorV1conta = '',
    String? dadosFinanceirosV1valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? dadosFinanceirosV1indexador = '',
    String? dadosFinanceirosV1convencao = '',
    String? pagamentoV1InicioRentabilidadeV1 = '',
    String? pagamentoV1tabelaPricevencimentoDa1aParcela = '',
    String? tabelaPriceV1periodicidade = '',
    String? pagamentoV1realizaAmortizacaoExtraordinaria = '',
    String? pagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal =
        '',
    String? pagamentoV1resgateAntecipadoCompulsorioTotal = '',
    String? cadastrodeemissorlogradouro = '',
    String? cadastrodeemissornumero = '',
    String? cadastrodeemissorbairro = '',
    String? cadastrodeemissorcidade = '',
    String? cadastrodeemissoruf = '',
    String? cadastrodeemissorcep = '',
    String? assinantesTermoConstitutivoV1EmissorV1nome = '',
    String? assinantesTermoConstitutivoV1EmissorV1telefones = '',
    String? assinantesTermoConstitutivoV1EmissorV1email = '',
    String? serieUnica = '',
    String? numdaEmissao = '',
    String? investidorV1razaoSocial = '',
    String? investidorV1cnpjCpf = '',
    String? investidorV1enderecorua = '',
    String? investidorV1endereconumero = '',
    String? investidorV1enderecocomplemento = '',
    String? investidorV1enderecobairro = '',
    String? investidorV1enderecocep = '',
    String? investidorV1enderecocidade = '',
    String? investidorV1enderecoestado = '',
    String? investidorV1telefone = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
    String? uuidSafe = '',
    String? idTemplate1 = '',
  }) async {
    final ffApiRequestBody = '''
{"templates":"{\\"NjA0MDM=\\":
					{
    \\"numeroDaEmissao\\": \\"${numeroDaEmissao}\\",
    \\"numeroDeSerie\\": \\"${numeroDeSerie}\\",
    \\"emissor\\": \\"${emissor}\\",
    \\"cnpjemissor\\": \\"${cnpjemissor}\\",
    \\"dataDaEmissao\\": \\"${dataDaEmissao}\\",
    \\"dataDoVencimento\\": \\"${dataDoVencimento}\\",
    \\"valorTotalDaEmissao\\": \\"${valorTotalDaEmissao}\\",
    \\"valorNominalUnitario\\": \\"${valorNominalUnitario}\\",
    \\"quantidade\\": \\"${quantidade}\\",
    \\"custoDaEmissao\\": \\"${custoDaEmissao}\\",
    \\"BancoEscriturador\\": \\"${bancoEscriturador}\\",
    \\"ContaEscriturador\\": \\"${contaEscriturador}\\",
    \\"repactuacao\\": \\"${repactuacao}\\",
    \\"detalhesRepactuacao\\": \\"${detalhesRepactuacao}\\",
    \\"ClassificacaoDeRiscoV1\\": \\"${classificacaoDeRiscoV1}\\",
    \\"TipoDeDistribuicaoV1\\": \\"${tipoDeDistribuicaoV1}\\",
    \\"utilizaDataDeAnuncioDaDistribuicao\\": \\"${utilizaDataDeAnuncioDaDistribuicao}\\",
    \\"EmissorV1NBanco\\": \\"${emissorV1NBanco}\\",
    \\"EmissorV1Banco\\": \\"${emissorV1Banco}\\",
    \\"EmissorV1Agencia\\": \\"${emissorV1Agencia}\\",
    \\"EmissorV1conta\\": \\"${emissorV1conta}\\",
    \\"DadosFinanceirosV1valorDosJurosRemunetorios\\": \\"${dadosFinanceirosV1valorDosJurosRemunetorios}\\",
    \\"DadosFinanceirosV1periodo\\": \\"${dadosFinanceirosV1periodo}\\",
    \\"DadosFinanceirosV1percentualDoIndexador\\": \\"${dadosFinanceirosV1percentualDoIndexador}\\",
    \\"DadosFinanceirosV1indexador\\": \\"${dadosFinanceirosV1indexador}\\",
    \\"DadosFinanceirosV1convencao\\": \\"${dadosFinanceirosV1convencao}\\",
    \\"PagamentoV1InicioRentabilidadeV1\\": \\"${pagamentoV1InicioRentabilidadeV1}\\",
    \\"PagamentoV1tabelaPricevencimentoDa1aParcela\\": \\"${pagamentoV1tabelaPricevencimentoDa1aParcela}\\",
    \\"TabelaPriceV1periodicidade\\": \\"${tabelaPriceV1periodicidade}\\",
    \\"PagamentoV1realizaAmortizacaoExtraordinaria\\": \\"${pagamentoV1realizaAmortizacaoExtraordinaria}\\",
    \\"PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal\\": \\"${pagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal}\\",
    \\"PagamentoV1resgateAntecipadoCompulsorioTotal\\": \\"${pagamentoV1resgateAntecipadoCompulsorioTotal}\\",
    \\"cadastrodeemissorlogradouro\\": \\"${cadastrodeemissorlogradouro}\\",
    \\"cadastrodeemissornumero\\": \\"${cadastrodeemissornumero}\\",
    \\"cadastrodeemissorbairro\\": \\"${cadastrodeemissorbairro}\\",
    \\"cadastrodeemissorcidade\\": \\"${cadastrodeemissorcidade}\\",
    \\"cadastrodeemissoruf\\": \\"${cadastrodeemissoruf}\\",
    \\"cadastrodeemissorcep\\": \\"${cadastrodeemissorcep}\\",
    \\"AssinantesTermoConstitutivoV1EmissorV1nome\\": \\"${assinantesTermoConstitutivoV1EmissorV1nome}\\",
    \\"AssinantesTermoConstitutivoV1EmissorV1telefones\\": \\"${assinantesTermoConstitutivoV1EmissorV1telefones}\\",
    \\"AssinantesTermoConstitutivoV1EmissorV1email\\": \\"${assinantesTermoConstitutivoV1EmissorV1email}\\",
    \\"serieUnica\\": \\"${serieUnica}\\",
    \\"NumdaEmissao\\": \\"${numeroDaEmissao}\\",
    \\"InvestidorV1razaoSocial\\": \\"${investidorV1razaoSocial}\\",
    \\"InvestidorV1cnpjCpf\\": \\"${investidorV1cnpjCpf}\\",
    \\"InvestidorV1enderecorua\\": \\"${investidorV1enderecorua}\\",
    \\"InvestidorV1endereconumero\\": \\"${investidorV1endereconumero}\\",
    \\"InvestidorV1enderecocomplemento\\": \\"${investidorV1enderecocomplemento}\\",
    \\"InvestidorV1enderecobairro\\": \\"${investidorV1enderecobairro}\\",
    \\"InvestidorV1enderecocep\\": \\"${investidorV1enderecocep}\\",
    \\"InvestidorV1enderecocidade\\": \\"${investidorV1enderecocidade}\\",
    \\"InvestidorV1enderecoestado\\": \\"${investidorV1enderecoestado}\\",
    \\"InvestidorV1telefone\\": \\"${investidorV1telefone}\\",
    \\"dadosBancariosDoEmissorbanco\\": \\"${dadosBancariosDoEmissorbanco}\\",
    \\"dadosBancariosDoEmissorcodigo\\": \\"${dadosBancariosDoEmissorcodigo}\\",
    \\"dadosBancariosDoEmissoragencia\\": \\"${dadosBancariosDoEmissoragencia}\\",
    \\"dadosBancariosDoEmissorcontaCorrente\\": \\"${dadosBancariosDoEmissorcontaCorrente}\\",
    \\"dadosBancariosDoEmissorcontaCorrentedigito\\": \\"${dadosBancariosDoEmissorcontaCorrentedigito}\\"
}

				}
"}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'DFSDocumento a partir do template WORDx',
      apiUrl:
          'https://secure.d4sign.com.br/api/v1/documents/16e99d47-c83b-45e4-b849-2109a6c52c66/makedocumentbytemplate?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static dynamic uuiddocument(dynamic response) => getJsonField(
        response,
        r'''$.uuid''',
      );
}

class DFSDocumentosTesteCall {
  static Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? emissor = '',
    String? cnpjemissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? valorNominalUnitario = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? bancoEscriturador = '',
    String? agenciaEscriturador = '',
    String? contaEscriturador = '',
    String? repactuacao = '',
    String? detalhesRepactuacao = '',
    String? classificacaoDeRiscoV1 = '',
    String? tipoDeDistribuicaoV1 = '',
    String? utilizaDataDeAnuncioDaDistribuicao = '',
    String? emissorV1NBanco = '',
    String? emissorV1Banco = '',
    String? emissorV1Agencia = '',
    String? emissorV1conta = '',
    String? dadosFinanceirosV1valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? dadosFinanceirosV1indexador = '',
    String? dadosFinanceirosV1convencao = '',
    String? pagamentoV1InicioRentabilidadeV1 = '',
    String? pagamentoV1tabelaPricevencimentoDa1aParcela = '',
    String? tabelaPriceV1periodicidade = '',
    String? pagamentoV1realizaAmortizacaoExtraordinaria = '',
    String? pagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal =
        '',
    String? pagamentoV1resgateAntecipadoCompulsorioTotal = '',
    String? cadastrodeemissorlogradouro = '',
    String? cadastrodeemissornumero = '',
    String? cadastrodeemissorbairro = '',
    String? cadastrodeemissorcidade = '',
    String? cadastrodeemissoruf = '',
    String? cadastrodeemissorcep = '',
    String? assinantesTermoConstitutivoV1EmissorV1nome = '',
    String? assinantesTermoConstitutivoV1EmissorV1telefones = '',
    String? assinantesTermoConstitutivoV1EmissorV1email = '',
    String? serieUnica = '',
    String? numdaEmissao = '',
    String? investidorV1razaoSocial = '',
    String? investidorV1cnpjCpf = '',
    String? investidorV1enderecorua = '',
    String? investidorV1endereconumero = '',
    String? investidorV1enderecocomplemento = '',
    String? investidorV1enderecobairro = '',
    String? investidorV1enderecocep = '',
    String? investidorV1enderecocidade = '',
    String? investidorV1enderecoestado = '',
    String? investidorV1telefone = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
    String? uuidSafe = '',
    String? idTemplate1 = '',
  }) async {
    final ffApiRequestBody = '''
{"templates":"{\\"MTA4Nzg4\\":
					{
    \\"numeroDaEmissao\\": \\"${numeroDaEmissao}\\",
    \\"numeroDeSerie\\": \\"${numeroDeSerie}\\",
    \\"emissor\\": \\"${emissor}\\",
    \\"cnpjemissor\\": \\"${cnpjemissor}\\",
    \\"dataDaEmissao\\": \\"${dataDaEmissao}\\",
    \\"dataDoVencimento\\": \\"${dataDoVencimento}\\",
    \\"valorTotalDaEmissao\\": \\"${valorTotalDaEmissao}\\",
    \\"valorNominalUnitario\\": \\"${valorNominalUnitario}\\",
    \\"quantidade\\": \\"${quantidade}\\",
    \\"custoDaEmissao\\": \\"${custoDaEmissao}\\",
    \\"BancoEscriturador\\": \\"${bancoEscriturador}\\",
    \\"ContaEscriturador\\": \\"${contaEscriturador}\\",
    \\"repactuacao\\": \\"${repactuacao}\\",
    \\"detalhesRepactuacao\\": \\"${detalhesRepactuacao}\\",
    \\"ClassificacaoDeRiscoV1\\": \\"${classificacaoDeRiscoV1}\\",
    \\"TipoDeDistribuicaoV1\\": \\"${tipoDeDistribuicaoV1}\\",
    \\"utilizaDataDeAnuncioDaDistribuicao\\": \\"${utilizaDataDeAnuncioDaDistribuicao}\\",
    \\"EmissorV1NBanco\\": \\"${emissorV1NBanco}\\",
    \\"EmissorV1Banco\\": \\"${emissorV1Banco}\\",
    \\"EmissorV1Agencia\\": \\"${emissorV1Agencia}\\",
    \\"EmissorV1conta\\": \\"${emissorV1conta}\\",
    \\"DadosFinanceirosV1valorDosJurosRemunetorios\\": \\"${dadosFinanceirosV1valorDosJurosRemunetorios}\\",
    \\"DadosFinanceirosV1periodo\\": \\"${dadosFinanceirosV1periodo}\\",
    \\"DadosFinanceirosV1percentualDoIndexador\\": \\"${dadosFinanceirosV1percentualDoIndexador}\\",
    \\"DadosFinanceirosV1indexador\\": \\"${dadosFinanceirosV1indexador}\\",
    \\"DadosFinanceirosV1convencao\\": \\"${dadosFinanceirosV1convencao}\\",
    \\"PagamentoV1InicioRentabilidadeV1\\": \\"${pagamentoV1InicioRentabilidadeV1}\\",
    \\"PagamentoV1tabelaPricevencimentoDa1aParcela\\": \\"${pagamentoV1tabelaPricevencimentoDa1aParcela}\\",
    \\"TabelaPriceV1periodicidade\\": \\"${tabelaPriceV1periodicidade}\\",
    \\"PagamentoV1realizaAmortizacaoExtraordinaria\\": \\"${pagamentoV1realizaAmortizacaoExtraordinaria}\\",
    \\"PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal\\": \\"${pagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal}\\",
    \\"PagamentoV1resgateAntecipadoCompulsorioTotal\\": \\"${pagamentoV1resgateAntecipadoCompulsorioTotal}\\",
    \\"cadastrodeemissorlogradouro\\": \\"${cadastrodeemissorlogradouro}\\",
    \\"cadastrodeemissornumero\\": \\"${cadastrodeemissornumero}\\",
    \\"cadastrodeemissorbairro\\": \\"${cadastrodeemissorbairro}\\",
    \\"cadastrodeemissorcidade\\": \\"${cadastrodeemissorcidade}\\",
    \\"cadastrodeemissoruf\\": \\"${cadastrodeemissoruf}\\",
    \\"cadastrodeemissorcep\\": \\"${cadastrodeemissorcep}\\",
    \\"AssinantesTermoConstitutivoV1EmissorV1nome\\": \\"${assinantesTermoConstitutivoV1EmissorV1nome}\\",
    \\"AssinantesTermoConstitutivoV1EmissorV1telefones\\": \\"${assinantesTermoConstitutivoV1EmissorV1telefones}\\",
    \\"AssinantesTermoConstitutivoV1EmissorV1email\\": \\"${assinantesTermoConstitutivoV1EmissorV1email}\\",
    \\"serieUnica\\": \\"${serieUnica}\\",
    \\"NumdaEmissao\\": \\"${numeroDaEmissao}\\",
    \\"InvestidorV1razaoSocial\\": \\"${investidorV1razaoSocial}\\",
    \\"InvestidorV1cnpjCpf\\": \\"${investidorV1cnpjCpf}\\",
    \\"InvestidorV1enderecorua\\": \\"${investidorV1enderecorua}\\",
    \\"InvestidorV1endereconumero\\": \\"${investidorV1endereconumero}\\",
    \\"InvestidorV1enderecocomplemento\\": \\"${investidorV1enderecocomplemento}\\",
    \\"InvestidorV1enderecobairro\\": \\"${investidorV1enderecobairro}\\",
    \\"InvestidorV1enderecocep\\": \\"${investidorV1enderecocep}\\",
    \\"InvestidorV1enderecocidade\\": \\"${investidorV1enderecocidade}\\",
    \\"InvestidorV1enderecoestado\\": \\"${investidorV1enderecoestado}\\",
    \\"InvestidorV1telefone\\": \\"${investidorV1telefone}\\",
    \\"dadosBancariosDoEmissorbanco\\": \\"${dadosBancariosDoEmissorbanco}\\",
    \\"dadosBancariosDoEmissorcodigo\\": \\"${dadosBancariosDoEmissorcodigo}\\",
    \\"dadosBancariosDoEmissoragencia\\": \\"${dadosBancariosDoEmissoragencia}\\",
    \\"dadosBancariosDoEmissorcontaCorrente\\": \\"${dadosBancariosDoEmissorcontaCorrente}\\",
    \\"dadosBancariosDoEmissorcontaCorrentedigito\\": \\"${dadosBancariosDoEmissorcontaCorrentedigito}\\"
}

				}
"}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'DFSDocumentos Teste',
      apiUrl:
          'https://secure.d4sign.com.br/api/v1/documents/16e99d47-c83b-45e4-b849-2109a6c52c66/makedocumentbytemplateword?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DocumentoAPartirDoTemplateWORDxCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? emissor = '',
    String? cnpjemissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? valorNominalUnitario = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? bancoEscriturador = '',
    String? agenciaEscriturador = '',
    String? contaEscriturador = '',
    String? repactuacao = '',
    String? detalhesRepactuacao = '',
    String? classificacaoDeRiscoV1 = '',
    String? tipoDeDistribuicaoV1 = '',
    String? utilizaDataDeAnuncioDaDistribuicao = '',
    String? emissorV1NBanco = '',
    String? emissorV1Banco = '',
    String? emissorV1Agencia = '',
    String? emissorV1conta = '',
    String? dadosFinanceirosV1valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? dadosFinanceirosV1indexador = '',
    String? dadosFinanceirosV1convencao = '',
    String? pagamentoV1InicioRentabilidadeV1 = '',
    String? pagamentoV1tabelaPricevencimentoDa1aParcela = '',
    String? tabelaPriceV1periodicidade = '',
    String? pagamentoV1realizaAmortizacaoExtraordinaria = '',
    String? pagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal =
        '',
    String? pagamentoV1resgateAntecipadoCompulsorioTotal = '',
    String? cadastrodeemissorlogradouro = '',
    String? cadastrodeemissornumero = '',
    String? cadastrodeemissorbairro = '',
    String? cadastrodeemissorcidade = '',
    String? cadastrodeemissoruf = '',
    String? cadastrodeemissorcep = '',
    String? assinantesTermoConstitutivoV1EmissorV1nome = '',
    String? assinantesTermoConstitutivoV1EmissorV1telefones = '',
    String? assinantesTermoConstitutivoV1EmissorV1email = '',
    String? serieUnica = '',
    String? numdaEmissao = '',
    String? investidorV1razaoSocial = '',
    String? investidorV1cnpjCpf = '',
    String? investidorV1enderecorua = '',
    String? investidorV1endereconumero = '',
    String? investidorV1enderecocomplemento = '',
    String? investidorV1enderecobairro = '',
    String? investidorV1enderecocep = '',
    String? investidorV1enderecocidade = '',
    String? investidorV1enderecoestado = '',
    String? investidorV1telefone = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
    String? uuidSafe = '',
    String? idTemplate1 = '',
  }) async {
    final ffApiRequestBody = '''
{"templates":"{\\"MTA4Nzg4\\":
					{
    \\"numeroDaEmissao\\": \\"${numeroDaEmissao}\\",
    \\"numeroDeSerie\\": "${numeroDeSerie}",
    \\"emissor\\": "${emissor}",
    \\"cnpjemissor\\": "${cnpjemissor}",
    \\"dataDaEmissao\\": "${dataDaEmissao}",
    \\"dataDoVencimento\\": "${dataDoVencimento}",
    \\"valorTotalDaEmissao": "${valorTotalDaEmissao}",
    \\"valorNominalUnitario": "${valorNominalUnitario}",
    \\"quantidade": "${quantidade}",
    \\"custoDaEmissao": "${custoDaEmissao}",
    \\"BancoEscriturador": "${bancoEscriturador}",
    \\"AgênciaEscriturador": "AgênciaEscriturador",
    \\"ContaEscriturador": "${contaEscriturador}",
    \\"repactuacao": "${repactuacao}",
    \\"detalhesRepactuacao": "${detalhesRepactuacao}",
    \\"ClassificacaoDeRiscoV1": "${classificacaoDeRiscoV1}",
    \\"TipoDeDistribuicaoV1": "${tipoDeDistribuicaoV1}",
    \\"utilizaDataDeAnuncioDaDistribuicao": "${utilizaDataDeAnuncioDaDistribuicao}",
    \\"EmissorV1NBanco": "${emissorV1NBanco}",
    \\"EmissorV1Banco": "${emissorV1Banco}",
    \\"EmissorV1Agencia": "${emissorV1Agencia}",
    \\"EmissorV1conta": "${emissorV1conta}",
    \\"DadosFinanceirosV1valorDosJurosRemunetorios": "${dadosFinanceirosV1valorDosJurosRemunetorios}",
    \\"DadosFinanceirosV1periodo": "${dadosFinanceirosV1periodo}",
    \\"DadosFinanceirosV1percentualDoIndexador": "${dadosFinanceirosV1percentualDoIndexador}",
    \\"DadosFinanceirosV1indexador": "${dadosFinanceirosV1indexador}",
    \\"DadosFinanceirosV1convencao": "${dadosFinanceirosV1convencao}",
    \\"PagamentoV1InicioRentabilidadeV1": "${pagamentoV1InicioRentabilidadeV1}",
    \\"PagamentoV1tabelaPricevencimentoDa1aParcela": "${pagamentoV1tabelaPricevencimentoDa1aParcela}",
    \\"TabelaPriceV1periodicidade": "${tabelaPriceV1periodicidade}",
    \\"PagamentoV1realizaAmortizacaoExtraordinaria": "${pagamentoV1realizaAmortizacaoExtraordinaria}",
    \\"PagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal": "${pagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal}",
    \\"PagamentoV1resgateAntecipadoCompulsorioTotal": "${pagamentoV1resgateAntecipadoCompulsorioTotal}",
    \\"cadastrodeemissorlogradouro": "${cadastrodeemissorlogradouro}",
    \\"cadastrodeemissornumero": "${cadastrodeemissornumero}",
    \\"cadastrodeemissorbairro": "${cadastrodeemissorbairro}",
    \\"cadastrodeemissorcidade": "${cadastrodeemissorcidade}",
    \\"cadastrodeemissoruf": "${cadastrodeemissoruf}",
    \\"cadastrodeemissorcep": "${cadastrodeemissorcep}",
    \\"AssinantesTermoConstitutivoV1EmissorV1nome": "${assinantesTermoConstitutivoV1EmissorV1nome}",
    \\"AssinantesTermoConstitutivoV1EmissorV1telefones": "${assinantesTermoConstitutivoV1EmissorV1telefones}",
    \\"AssinantesTermoConstitutivoV1EmissorV1email": "${assinantesTermoConstitutivoV1EmissorV1email}",
    \\"serieUnica": "${serieUnica}",
    \\"NumdaEmissao": "${numeroDaEmissao}",
    \\"InvestidorV1razaoSocial": "${investidorV1razaoSocial}",
    \\"InvestidorV1cnpjCpf": "${investidorV1cnpjCpf}",
    \\"InvestidorV1enderecorua": "${investidorV1enderecorua}",
    \\"InvestidorV1endereconumero": "${investidorV1endereconumero}",
    \\"InvestidorV1enderecocomplemento": "${investidorV1enderecocomplemento}",
    \\"InvestidorV1enderecobairro": "${investidorV1enderecobairro}",
    \\"InvestidorV1enderecocep": "${investidorV1enderecocep}",
    \\"InvestidorV1enderecocidade": "${investidorV1enderecocidade}",
    \\"InvestidorV1enderecoestado": "${investidorV1enderecoestado}",
    \\"InvestidorV1telefone": "${investidorV1telefone}",
    \\"dadosBancariosDoEmissorbanco": "${dadosBancariosDoEmissorbanco}",
    \\"dadosBancariosDoEmissorcodigo": "${dadosBancariosDoEmissorcodigo}",
    \\"dadosBancariosDoEmissoragencia": "${dadosBancariosDoEmissoragencia}",
    \\"dadosBancariosDoEmissorcontaCorrente": "${dadosBancariosDoEmissorcontaCorrente}",
    \\"dadosBancariosDoEmissorcontaCorrentedigito": "${dadosBancariosDoEmissorcontaCorrentedigito}"
}

				}
"}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Documento a partir do template WORDx Copy Copy',
      apiUrl:
          'https://secure.d4sign.com.br/api/v1/documents/16e99d47-c83b-45e4-b849-2109a6c52c66/makedocumentbytemplateword?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DocumentoAPartirDoTemplateWORDxCopyCall {
  static Future<ApiCallResponse> call({
    String? numeroDaEmissao = '',
    String? numeroDeSerie = '',
    String? emissor = '',
    String? cnpjemissor = '',
    String? dataDaEmissao = '',
    String? dataDoVencimento = '',
    String? valorTotalDaEmissao = '',
    String? valorNominalUnitario = '',
    String? quantidade = '',
    String? custoDaEmissao = '',
    String? bancoEscriturador = '',
    String? agenciaEscriturador = '',
    String? contaEscriturador = '',
    String? repactuacao = '',
    String? detalhesRepactuacao = '',
    String? classificacaoDeRiscoV1 = '',
    String? tipoDeDistribuicaoV1 = '',
    String? utilizaDataDeAnuncioDaDistribuicao = '',
    String? emissorV1NBanco = '',
    String? emissorV1Banco = '',
    String? emissorV1Agencia = '',
    String? emissorV1conta = '',
    String? dadosFinanceirosV1valorDosJurosRemunetorios = '',
    String? dadosFinanceirosV1periodo = '',
    String? dadosFinanceirosV1percentualDoIndexador = '',
    String? dadosFinanceirosV1indexador = '',
    String? dadosFinanceirosV1convencao = '',
    String? pagamentoV1InicioRentabilidadeV1 = '',
    String? pagamentoV1tabelaPricevencimentoDa1aParcela = '',
    String? tabelaPriceV1periodicidade = '',
    String? pagamentoV1realizaAmortizacaoExtraordinaria = '',
    String? pagamentoV1realizaAmortizacaoExtraordinariaresgateAntecipadoFacultativoTotal =
        '',
    String? pagamentoV1resgateAntecipadoCompulsorioTotal = '',
    String? cadastrodeemissorlogradouro = '',
    String? cadastrodeemissornumero = '',
    String? cadastrodeemissorbairro = '',
    String? cadastrodeemissorcidade = '',
    String? cadastrodeemissoruf = '',
    String? cadastrodeemissorcep = '',
    String? assinantesTermoConstitutivoV1EmissorV1nome = '',
    String? assinantesTermoConstitutivoV1EmissorV1telefones = '',
    String? assinantesTermoConstitutivoV1EmissorV1email = '',
    String? serieUnica = '',
    String? numdaEmissao = '',
    String? investidorV1razaoSocial = '',
    String? investidorV1cnpjCpf = '',
    String? investidorV1enderecorua = '',
    String? investidorV1endereconumero = '',
    String? investidorV1enderecocomplemento = '',
    String? investidorV1enderecobairro = '',
    String? investidorV1enderecocep = '',
    String? investidorV1enderecocidade = '',
    String? investidorV1enderecoestado = '',
    String? investidorV1telefone = '',
    String? dadosBancariosDoEmissorbanco = '',
    String? dadosBancariosDoEmissorcodigo = '',
    String? dadosBancariosDoEmissoragencia = '',
    String? dadosBancariosDoEmissorcontaCorrente = '',
    String? dadosBancariosDoEmissorcontaCorrentedigito = '',
    String? uuidSafe = '',
    String? idTemplate1 = '',
  }) async {
    final ffApiRequestBody = '''
{"templates":"{\\"MTA4Nzg4\\":
					{
					\\"numeroDaEmissao\\":\\"TESTE1\\"

					}

				}
"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Documento a partir do template WORDx Copy',
      apiUrl:
          'https://secure.d4sign.com.br/api/v1/documents/16e99d47-c83b-45e4-b849-2109a6c52c66/makedocumentbytemplateword?tokenAPI=live_8f4f273635b50bb7d378b20b6a05bdb86ba4a59e999d4199f230e5b5fd3a2efe&cryptKey=live_crypt_B6LQbb72NQug7z4M0PfOXThFoJe00wXw',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class FazLoginNaIMFDigitalECriaOUsurioNoAuthCasoAindaNoExistaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "senha": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Faz login na IMFDigital e cria o usurio no Auth caso ainda no exista',
      apiUrl: 'https://onboarding-api.hml.cloud.laqus.io/v1/imf-auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GoogleSheetTesteCall {
  static Future<ApiCallResponse> call({
    String? planilha = '',
    String? intervalo = '',
    String? key = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GoogleSheetTeste',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/${planilha}/values/${intervalo}?key=${key}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TesteAPIGoogleCall {
  static Future<ApiCallResponse> call({
    String? valorEmissao = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'testeAPIGoogle',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/1DTYkxNy7CJQ7Aas1TGGOy9_MPf_ZtMNsjj8PCoICi-Y/values/Sheet1!E6:E6:append',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TokengoogleCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "type": "service_account",
  "project_id": "nota-comercial-intrader",
  "private_key_id": "4f0c960b08edbadacbac588843424d8b3421ec13",
  "private_key": "-----BEGIN PRIVATE KEY-----\\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCc6Hnm8Mu+9ygg\\nFyEQXbiwK+3h4q0pATPTBAohPNy1sxUA/7vwcc9uEDtRjF6LJcWwvtCbeEoVMyrK\\nfW/9SxM+3mtTrSz8e0sBNMc/qQessEI0KCKPnPgkUOXv61W+hDp06k0wn0/kBC+S\\nDcrvE88vKIj9okrXF27uc+Yjg9ujIrYP6TAVpjzYdhwbEVvcZVoWdDoR66gvlUtI\\nwjxFPI0hnmG9bdUlu32LOp7bX+7B5LoSN4D2i0qUqyOrXPoGqrBcGoPMQ9CWgf6b\\nGcAVOEW8dD3OCQkYtgZZhgaH29S0z6XQnBZCoicrZxQK1jojFM7VwvqiOufpeHPg\\nKaViplkhAgMBAAECggEANwJJum0xAQIlTxrMvLAez6SXAVo22ulRAemoo35y4kCm\\nXHNLsEA2OJ/4K97KRn43kH9VIyxIzKXjmpnfaS2o0aGofu13mAyhfwrBz8+yoRgq\\nHZ70fuTJGfJCqpoWtXQmClcaOLGhkI7nHo03WBnZyO6tGD6Nflr4ySBYzpqrpcU5\\nB1C0kRWzKgVfUGxdrEOV8jUY4eW8PBub/SIx7xhDZTb7PHGqfHeGjlbmsvH1K1Rw\\nX7uc+LhaqHmDI2TPXV+A/YwX2/I9C3rTile/HA4Ye+xTY0q0Srbi/us6U2QGs+Xg\\nqyF9hIcqAbOvqs3kvO55nlLjcKcXJPVNU9O+AvuXAQKBgQDIm+whgfTWbg/POcUQ\\nJ9jdZRuZ1SMq06bOtRREtedL+tide7qKGjCfys92OQoEM9iu6N2I+lSzLhPKNQi4\\nyYvZiCz6ntY8P2HNOsQxWhFD3LE1nDfz9Wqb/VS/E+UIDvebgi/YxrJsApoIrmTB\\nAgNie/CfzHvxNssKh84hjlf6DwKBgQDIO4u4oSCYVc2YOZdery/CsIKTJUQ7YKhV\\ny1Iqtbnzc9lfI0ANNIXXRLm4kajmqcAlrX8WEKfB0gsY9j2VW/lrilVopGbiF8BK\\n/XH51K0yQLBSLqEK6nqu7jfFr4aNoRGSUUBJ5WwA8Y/hqXv/EeEJzTQHXR23z8aF\\nxGEFW91pzwKBgA3SCCOK03ZOYNJy9WuWgy9FfvBLKcASksRc30eYjJXEc1XuJzzK\\nbx0jGMXZSiJd/AiYzGJadKlffEeK/c3VPMhAxHCDrti5uSAtc0S/Ir9dHexGleg9\\nuRmEC2makkXK2i4hevBhR/t+9mOwuAo//EG1ri8kJEnK75QLJR1UtCTrAoGAFdkh\\nesjiFJ0wLM8D7EnzTSwTY1jqpAv88jeYRJ7FpoHakx32jDpR7FZMaY5DPsAA/lt7\\nBX5Vv7laiqO7voNlqM1UWnGt5DexPL2A5UDGkTgrxRvfaKCDOHk3zrNDXErZ7vw8\\nppOJAGVbTMVAiWl7A6XHapJHftoGEGyIJZyLgVMCgYBbY8nQvA3Pet9285Kshe65\\nPow4+up386AaKFqqMVZ5MCrb/+rXUdGORQYHyLDQ0OUDJ3d7oG3R59QDqtFcfjWd\\nwcccR5r/huH69MFHPXYEOOLlrO4mQylKKJdkfrfpPCjw0uA+Yia9U/X79oqAi5Sd\\nSW4EmagULyIKzM7gdrAI4A==\\n-----END PRIVATE KEY-----\\n",
  "client_email": "notacomercial-919@nota-comercial-intrader.iam.gserviceaccount.com",
  "client_id": "114774024803604158037",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/notacomercial-919%40nota-comercial-intrader.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tokengoogle',
      apiUrl: 'https://accounts.google.com/o/oauth2/auth',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TokengoogleAuthCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'tokengoogle auth',
      apiUrl: 'https://accounts.google.com/o/oauth2/v2/auth',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'client_id':
            "643214402750-9bpmf12e7e8snmn5e6ppmv4nsmg21sau.apps.googleusercontent.com",
        'client_secret': "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",
        'scope': "https://www.googleapis.com/auth/spreadsheets",
        'redirect_uri': "https://developers.google.com/oauthplayground",
        'prompt': "consent",
        'acces_type': "offline",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TokengoogleAuthCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'tokengoogle auth Copy',
      apiUrl: 'https://accounts.google.com/o/oauth2/v2/auth',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'client_id':
            "643214402750-9bpmf12e7e8snmn5e6ppmv4nsmg21sau.apps.googleusercontent.com",
        'client_secret': "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",
        'scope': "https://www.googleapis.com/auth/spreadsheets",
        'redirect_uri': "https://developers.google.com/oauthplayground",
        'acces_type': "offline",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
}

class TokengoogleRefreshCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'tokengoogle refresh',
      apiUrl: 'https://oauth2.googleapis.com/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer',
      },
      params: {
        'scope': "https://www.googleapis.com/auth/spreadsheets",
        'grant_type': "refresh_token",
        'redirect_uri': "https://intrasec.com.br",
        'client_id':
            "643214402750-9bpmf12e7e8snmn5e6ppmv4nsmg21sau.apps.googleusercontent.com",
        'client_secret': "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",
        'refresh_token':
            "1//04n6xuSPk37vlCgYIARAAGAQSNwF-L9IrXZlhmv2k-Hy6nRab7QlcCwwTs6XkCcCcMlzn798fwy1nYHdhSQnx880SvLtiRwauKgo",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static String? authtoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  static String? bearer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token_type''',
      ));
}

class GetGoogleApiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'get google api',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/1DTYkxNy7CJQ7Aas1TGGOy9_MPf_ZtMNsjj8PCoICi-Y/values/PRICE!A15:F120?key=AIzaSyDEDmg53zK7oA2T5N8Vk-_6fJ5C12MrUyo',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostmanCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'postman',
      apiUrl:
          'https://web.postman.co/workspace/2dc6b609-15a1-4432-87b2-f646d96bdbba/request/31531675-baea731c-3db7-4571-a4e8-ed85ad88f76a',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiBuscarCEPCall {
  static Future<ApiCallResponse> call({
    String? varcep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'apiBuscarCEP',
      apiUrl: 'https://viacep.com.br/ws/${varcep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic endereco(dynamic response) => getJsonField(
        response,
        r'''$.logradouro''',
      );
  static dynamic bairro(dynamic response) => getJsonField(
        response,
        r'''$.bairro''',
      );
  static dynamic cidade(dynamic response) => getJsonField(
        response,
        r'''$.localidade''',
      );
  static dynamic uf(dynamic response) => getJsonField(
        response,
        r'''$.uf''',
      );
}

class ApiSimulacaoOperacaoCall {
  static Future<ApiCallResponse> call({
    double? valorSolicitado,
    double? taxaDeCusto,
    double? valorMinimo,
  }) async {
    final ffApiRequestBody = '''
{
  "valorSolicitado": ${valorSolicitado},
  "taxaDeCusto": ${taxaDeCusto},
  "valorMinimo": ${valorMinimo}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ApiSimulacaoOperacao',
      apiUrl: 'https://financeiro-3aer.onrender.com/simulacao',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? custoDeEmissao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.custoDeEmissao''',
      ));
  static String? valorTotal(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.valorTotal''',
      ));
  static String? valorSolicitado(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.valorSolicitado''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
