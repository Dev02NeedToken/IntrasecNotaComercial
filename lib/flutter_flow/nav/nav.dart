import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? Tela01HomeProdutoWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? Tela01HomeProdutoWidget()
              : LoginWidget(),
        ),
        FFRoute(
          name: 'Tela04_OperacaoVerUsuario',
          path: '/OperacaoVerUsuario',
          requireAuth: true,
          builder: (context, params) => Tela04OperacaoVerUsuarioWidget(),
        ),
        FFRoute(
          name: 'Tela02_home',
          path: '/home',
          requireAuth: true,
          builder: (context, params) => Tela02HomeWidget(),
        ),
        FFRoute(
          name: 'Tela03_Solicitacoes',
          path: '/Solicitacoes',
          requireAuth: true,
          builder: (context, params) => Tela03SolicitacoesWidget(),
        ),
        FFRoute(
          name: 'Tela05_PessoaFisica',
          path: '/PessoaFisica',
          requireAuth: true,
          builder: (context, params) => Tela05PessoaFisicaWidget(),
        ),
        FFRoute(
          name: 'Tela07_operacoes',
          path: '/Operacoes',
          requireAuth: true,
          builder: (context, params) => Tela07OperacoesWidget(),
        ),
        FFRoute(
          name: 'Tela08_09_10_11Operacao',
          path: '/novaOperacao',
          requireAuth: true,
          builder: (context, params) => Tela08091011OperacaoWidget(
            pesssoaJuridicaList: params.getParam<DocumentReference>(
                'pesssoaJuridicaList',
                ParamType.DocumentReference,
                true,
                ['usercadastroPessoaJuridica']),
          ),
        ),
        FFRoute(
          name: 'Tela12_Cessoes',
          path: '/Cessoes',
          requireAuth: true,
          builder: (context, params) => Tela12CessoesWidget(),
        ),
        FFRoute(
          name: 'Tela13_simulacao',
          path: '/Simulacao',
          requireAuth: true,
          builder: (context, params) => Tela13SimulacaoWidget(),
        ),
        FFRoute(
          name: 'Tela14_Operacoes_excluidas',
          path: '/OperacoesExcluidas',
          requireAuth: true,
          builder: (context, params) => Tela14OperacoesExcluidasWidget(),
        ),
        FFRoute(
          name: 'Tela15_Operadores',
          path: '/Operadores',
          requireAuth: true,
          builder: (context, params) => Tela15OperadoresWidget(),
        ),
        FFRoute(
          name: 'Tela16_Grupos',
          path: '/Grupos',
          requireAuth: true,
          builder: (context, params) => Tela16GruposWidget(),
        ),
        FFRoute(
          name: 'Tela01_Home_produto',
          path: '/produto',
          requireAuth: true,
          builder: (context, params) => Tela01HomeProdutoWidget(),
        ),
        FFRoute(
          name: 'Tela03_contaDigital',
          path: '/ContaDigital',
          requireAuth: true,
          builder: (context, params) => Tela03ContaDigitalWidget(),
        ),
        FFRoute(
          name: 'Tela17_ContadigitalNovoCadastro',
          path: '/ContadigitalNovoCadastro',
          requireAuth: true,
          builder: (context, params) => Tela17ContadigitalNovoCadastroWidget(),
        ),
        FFRoute(
          name: 'Tela18_PessoaFisicaNovoCadastro',
          path: '/PessoaFisicaNovoCadastro',
          requireAuth: true,
          builder: (context, params) => Tela18PessoaFisicaNovoCadastroWidget(),
        ),
        FFRoute(
          name: 'Tela19_PessoaJuridicaNovoCadastro',
          path: '/PessoaJuridicaNovoEmissor',
          requireAuth: true,
          builder: (context, params) =>
              Tela19PessoaJuridicaNovoCadastroWidget(),
        ),
        FFRoute(
          name: 'Tela20_ContadigitalNovoOperador',
          path: '/ContadigitalNovoOperador',
          requireAuth: true,
          builder: (context, params) => Tela20ContadigitalNovoOperadorWidget(),
        ),
        FFRoute(
          name: 'Tela21_novoGrupo',
          path: '/NovoGrupo',
          requireAuth: true,
          builder: (context, params) => Tela21NovoGrupoWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'cadastro',
          path: '/cadastro',
          builder: (context, params) => CadastroWidget(),
        ),
        FFRoute(
          name: 'recuperarSenha',
          path: '/recuperarSenha',
          builder: (context, params) => RecuperarSenhaWidget(),
        ),
        FFRoute(
          name: 'breve',
          path: '/breve',
          requireAuth: true,
          builder: (context, params) => BreveWidget(),
        ),
        FFRoute(
          name: 'codigoVeficiacao',
          path: '/codigoVeficiacao',
          builder: (context, params) => CodigoVeficiacaoWidget(),
        ),
        FFRoute(
          name: 'verDocumentos',
          path: '/verDocumentos',
          requireAuth: true,
          builder: (context, params) => VerDocumentosWidget(),
        ),
        FFRoute(
          name: 'edicaoPessoaJuridica',
          path: '/EdicaoPessoaJuridica',
          requireAuth: true,
          asyncParams: {
            'cadastropj': getDoc(['usercadastroPessoaJuridica'],
                UsercadastroPessoaJuridicaRecord.fromSnapshot),
          },
          builder: (context, params) => EdicaoPessoaJuridicaWidget(
            cadastropj: params.getParam('cadastropj', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'Tela06_PessoaJuridica',
          path: '/PessoaJuridica',
          requireAuth: true,
          builder: (context, params) => Tela06PessoaJuridicaWidget(),
        ),
        FFRoute(
          name: 'TestandoOperacoes',
          path: '/testandoOperacoes',
          builder: (context, params) => TestandoOperacoesWidget(),
        ),
        FFRoute(
          name: 'testePDF',
          path: '/testePDF',
          requireAuth: true,
          builder: (context, params) => TestePDFWidget(),
        ),
        FFRoute(
          name: 'testeOp',
          path: '/testeOp',
          requireAuth: true,
          builder: (context, params) => TesteOpWidget(),
        ),
        FFRoute(
          name: 'mathOperac',
          path: '/mathOperac',
          requireAuth: true,
          builder: (context, params) => MathOperacWidget(),
        ),
        FFRoute(
          name: 'mathOperacTeste',
          path: '/mathOperacTeste',
          requireAuth: true,
          builder: (context, params) => MathOperacTesteWidget(),
        ),
        FFRoute(
          name: 'mathOperacCopy2',
          path: '/mathOperacCopy2',
          requireAuth: true,
          builder: (context, params) => MathOperacCopy2Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
