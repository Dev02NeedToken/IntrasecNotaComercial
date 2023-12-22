import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/operadores_record.dart';
import 'schema/user_cadastro_pessoa_fisica_record.dart';
import 'schema/user_record.dart';
import 'schema/usercadastro_pessoa_juridica_record.dart';
import 'schema/nova_operacao_record.dart';
import 'schema/doc_fisico_record.dart';
import 'schema/doc_operacoes_record.dart';
import 'schema/cadastro_operacoes_record.dart';
import 'schema/calculo_aprovado_record.dart';
import 'schema/doc_juridico_record.dart';
import 'schema/conta_bancaria_record.dart';
import 'schema/conta_bancaria_juridica_record.dart';
import 'schema/ispb_record.dart';
import 'schema/p_d_f_doc_record.dart';
import 'schema/retorn_a_p_i_credenciado_record.dart';
import 'schema/retorno_a_p_i_emissor_record.dart';
import 'schema/retorno_simulacao_record.dart';
import 'schema/simulacao_operacao_record.dart';
import 'schema/envolvido_pg_op_record.dart';
import 'schema/userpjcomunderline_record.dart';
import 'schema/resp_doc_assinatura_record.dart';
import 'schema/add_informacoescadastro_p_j_record.dart';
import 'schema/pagamentofluxo_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/operadores_record.dart';
export 'schema/user_cadastro_pessoa_fisica_record.dart';
export 'schema/user_record.dart';
export 'schema/usercadastro_pessoa_juridica_record.dart';
export 'schema/nova_operacao_record.dart';
export 'schema/doc_fisico_record.dart';
export 'schema/doc_operacoes_record.dart';
export 'schema/cadastro_operacoes_record.dart';
export 'schema/calculo_aprovado_record.dart';
export 'schema/doc_juridico_record.dart';
export 'schema/conta_bancaria_record.dart';
export 'schema/conta_bancaria_juridica_record.dart';
export 'schema/ispb_record.dart';
export 'schema/p_d_f_doc_record.dart';
export 'schema/retorn_a_p_i_credenciado_record.dart';
export 'schema/retorno_a_p_i_emissor_record.dart';
export 'schema/retorno_simulacao_record.dart';
export 'schema/simulacao_operacao_record.dart';
export 'schema/envolvido_pg_op_record.dart';
export 'schema/userpjcomunderline_record.dart';
export 'schema/resp_doc_assinatura_record.dart';
export 'schema/add_informacoescadastro_p_j_record.dart';
export 'schema/pagamentofluxo_record.dart';

/// Functions to query OperadoresRecords (as a Stream and as a Future).
Future<int> queryOperadoresRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      OperadoresRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<OperadoresRecord>> queryOperadoresRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      OperadoresRecord.collection,
      OperadoresRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<OperadoresRecord>> queryOperadoresRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      OperadoresRecord.collection,
      OperadoresRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UserCadastroPessoaFisicaRecords (as a Stream and as a Future).
Future<int> queryUserCadastroPessoaFisicaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserCadastroPessoaFisicaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserCadastroPessoaFisicaRecord>>
    queryUserCadastroPessoaFisicaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          UserCadastroPessoaFisicaRecord.collection,
          UserCadastroPessoaFisicaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<UserCadastroPessoaFisicaRecord>>
    queryUserCadastroPessoaFisicaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          UserCadastroPessoaFisicaRecord.collection,
          UserCadastroPessoaFisicaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query UserRecords (as a Stream and as a Future).
Future<int> queryUserRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserRecord>> queryUserRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserRecord>> queryUserRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UsercadastroPessoaJuridicaRecords (as a Stream and as a Future).
Future<int> queryUsercadastroPessoaJuridicaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsercadastroPessoaJuridicaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsercadastroPessoaJuridicaRecord>>
    queryUsercadastroPessoaJuridicaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          UsercadastroPessoaJuridicaRecord.collection,
          UsercadastroPessoaJuridicaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<UsercadastroPessoaJuridicaRecord>>
    queryUsercadastroPessoaJuridicaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          UsercadastroPessoaJuridicaRecord.collection,
          UsercadastroPessoaJuridicaRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query NovaOperacaoRecords (as a Stream and as a Future).
Future<int> queryNovaOperacaoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NovaOperacaoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NovaOperacaoRecord>> queryNovaOperacaoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NovaOperacaoRecord.collection,
      NovaOperacaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NovaOperacaoRecord>> queryNovaOperacaoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      NovaOperacaoRecord.collection,
      NovaOperacaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DocFisicoRecords (as a Stream and as a Future).
Future<int> queryDocFisicoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DocFisicoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DocFisicoRecord>> queryDocFisicoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DocFisicoRecord.collection,
      DocFisicoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DocFisicoRecord>> queryDocFisicoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DocFisicoRecord.collection,
      DocFisicoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DocOperacoesRecords (as a Stream and as a Future).
Future<int> queryDocOperacoesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DocOperacoesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DocOperacoesRecord>> queryDocOperacoesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DocOperacoesRecord.collection,
      DocOperacoesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DocOperacoesRecord>> queryDocOperacoesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DocOperacoesRecord.collection,
      DocOperacoesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CadastroOperacoesRecords (as a Stream and as a Future).
Future<int> queryCadastroOperacoesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CadastroOperacoesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CadastroOperacoesRecord>> queryCadastroOperacoesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CadastroOperacoesRecord.collection,
      CadastroOperacoesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CadastroOperacoesRecord>> queryCadastroOperacoesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CadastroOperacoesRecord.collection,
      CadastroOperacoesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CalculoAprovadoRecords (as a Stream and as a Future).
Future<int> queryCalculoAprovadoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CalculoAprovadoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CalculoAprovadoRecord>> queryCalculoAprovadoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CalculoAprovadoRecord.collection,
      CalculoAprovadoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CalculoAprovadoRecord>> queryCalculoAprovadoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CalculoAprovadoRecord.collection,
      CalculoAprovadoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DocJuridicoRecords (as a Stream and as a Future).
Future<int> queryDocJuridicoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DocJuridicoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DocJuridicoRecord>> queryDocJuridicoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DocJuridicoRecord.collection,
      DocJuridicoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DocJuridicoRecord>> queryDocJuridicoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DocJuridicoRecord.collection,
      DocJuridicoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ContaBancariaRecords (as a Stream and as a Future).
Future<int> queryContaBancariaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ContaBancariaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ContaBancariaRecord>> queryContaBancariaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ContaBancariaRecord.collection,
      ContaBancariaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ContaBancariaRecord>> queryContaBancariaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ContaBancariaRecord.collection,
      ContaBancariaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ContaBancariaJuridicaRecords (as a Stream and as a Future).
Future<int> queryContaBancariaJuridicaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ContaBancariaJuridicaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ContaBancariaJuridicaRecord>> queryContaBancariaJuridicaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ContaBancariaJuridicaRecord.collection,
      ContaBancariaJuridicaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ContaBancariaJuridicaRecord>> queryContaBancariaJuridicaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ContaBancariaJuridicaRecord.collection,
      ContaBancariaJuridicaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query IspbRecords (as a Stream and as a Future).
Future<int> queryIspbRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IspbRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IspbRecord>> queryIspbRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      IspbRecord.collection,
      IspbRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<IspbRecord>> queryIspbRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      IspbRecord.collection,
      IspbRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PDFDocRecords (as a Stream and as a Future).
Future<int> queryPDFDocRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PDFDocRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PDFDocRecord>> queryPDFDocRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PDFDocRecord.collection,
      PDFDocRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PDFDocRecord>> queryPDFDocRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PDFDocRecord.collection,
      PDFDocRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RetornAPICredenciadoRecords (as a Stream and as a Future).
Future<int> queryRetornAPICredenciadoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RetornAPICredenciadoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RetornAPICredenciadoRecord>> queryRetornAPICredenciadoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RetornAPICredenciadoRecord.collection,
      RetornAPICredenciadoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RetornAPICredenciadoRecord>> queryRetornAPICredenciadoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RetornAPICredenciadoRecord.collection,
      RetornAPICredenciadoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RetornoAPIEmissorRecords (as a Stream and as a Future).
Future<int> queryRetornoAPIEmissorRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RetornoAPIEmissorRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RetornoAPIEmissorRecord>> queryRetornoAPIEmissorRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RetornoAPIEmissorRecord.collection,
      RetornoAPIEmissorRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RetornoAPIEmissorRecord>> queryRetornoAPIEmissorRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RetornoAPIEmissorRecord.collection,
      RetornoAPIEmissorRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RetornoSimulacaoRecords (as a Stream and as a Future).
Future<int> queryRetornoSimulacaoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RetornoSimulacaoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RetornoSimulacaoRecord>> queryRetornoSimulacaoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RetornoSimulacaoRecord.collection,
      RetornoSimulacaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RetornoSimulacaoRecord>> queryRetornoSimulacaoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RetornoSimulacaoRecord.collection,
      RetornoSimulacaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SimulacaoOperacaoRecords (as a Stream and as a Future).
Future<int> querySimulacaoOperacaoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SimulacaoOperacaoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SimulacaoOperacaoRecord>> querySimulacaoOperacaoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SimulacaoOperacaoRecord.collection,
      SimulacaoOperacaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SimulacaoOperacaoRecord>> querySimulacaoOperacaoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SimulacaoOperacaoRecord.collection,
      SimulacaoOperacaoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query EnvolvidoPgOpRecords (as a Stream and as a Future).
Future<int> queryEnvolvidoPgOpRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EnvolvidoPgOpRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EnvolvidoPgOpRecord>> queryEnvolvidoPgOpRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EnvolvidoPgOpRecord.collection,
      EnvolvidoPgOpRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EnvolvidoPgOpRecord>> queryEnvolvidoPgOpRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EnvolvidoPgOpRecord.collection,
      EnvolvidoPgOpRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UserpjcomunderlineRecords (as a Stream and as a Future).
Future<int> queryUserpjcomunderlineRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserpjcomunderlineRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserpjcomunderlineRecord>> queryUserpjcomunderlineRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserpjcomunderlineRecord.collection,
      UserpjcomunderlineRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserpjcomunderlineRecord>> queryUserpjcomunderlineRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserpjcomunderlineRecord.collection,
      UserpjcomunderlineRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RespDocAssinaturaRecords (as a Stream and as a Future).
Future<int> queryRespDocAssinaturaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RespDocAssinaturaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RespDocAssinaturaRecord>> queryRespDocAssinaturaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RespDocAssinaturaRecord.collection,
      RespDocAssinaturaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RespDocAssinaturaRecord>> queryRespDocAssinaturaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RespDocAssinaturaRecord.collection,
      RespDocAssinaturaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AddInformacoescadastroPJRecords (as a Stream and as a Future).
Future<int> queryAddInformacoescadastroPJRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AddInformacoescadastroPJRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AddInformacoescadastroPJRecord>>
    queryAddInformacoescadastroPJRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          AddInformacoescadastroPJRecord.collection,
          AddInformacoescadastroPJRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<AddInformacoescadastroPJRecord>>
    queryAddInformacoescadastroPJRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          AddInformacoescadastroPJRecord.collection,
          AddInformacoescadastroPJRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query PagamentofluxoRecords (as a Stream and as a Future).
Future<int> queryPagamentofluxoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PagamentofluxoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PagamentofluxoRecord>> queryPagamentofluxoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PagamentofluxoRecord.collection,
      PagamentofluxoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PagamentofluxoRecord>> queryPagamentofluxoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PagamentofluxoRecord.collection,
      PagamentofluxoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UserRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UserRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUserRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UserRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUserRecordData(email: email));
}
