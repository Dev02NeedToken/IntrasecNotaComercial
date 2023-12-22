import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_side_bar_fechado_model.dart';
export 'menu_side_bar_fechado_model.dart';

class MenuSideBarFechadoWidget extends StatefulWidget {
  const MenuSideBarFechadoWidget({Key? key}) : super(key: key);

  @override
  _MenuSideBarFechadoWidgetState createState() =>
      _MenuSideBarFechadoWidgetState();
}

class _MenuSideBarFechadoWidgetState extends State<MenuSideBarFechadoWidget> {
  late MenuSideBarFechadoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuSideBarFechadoModel());

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

    return Container(
      width: 100.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
            color: Color(0x33000000),
            offset: Offset(0.0, 2.0),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 30.0,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {},
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 48.0,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/logoIntra40x40.png',
                      width: 40.0,
                      height: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Color(0xFFFCAE27),
                          borderRadius: 25.0,
                          borderWidth: 0.2,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.dashboard_rounded,
                            color: _model.verMenu == 'PessoaFisica'
                                ? FlutterFlowTheme.of(context).tertiary
                                : FlutterFlowTheme.of(context).primaryText,
                            size: 16.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('Tela01_Home_produto');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (_model.verMenu == 'ContaDigital') {
                      setState(() {
                        _model.verMenu = '';
                      });
                    } else {
                      setState(() {
                        _model.verMenu = 'ContaDigital';
                      });
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Color(0xFFFCAE27),
                              borderRadius: 25.0,
                              borderWidth: 0.2,
                              buttonSize: 50.0,
                              icon: FaIcon(
                                FontAwesomeIcons.dollarSign,
                                color: () {
                                  if (_model.verMenu == 'ContaDigital') {
                                    return FlutterFlowTheme.of(context)
                                        .tertiary;
                                  } else if (_model.mouseRegionHovered ==
                                      true) {
                                    return FlutterFlowTheme.of(context)
                                        .tertiary;
                                  } else {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  }
                                }(),
                                size: 16.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('breve');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                setState(() => _model.mouseRegionHovered = true);
              }),
              onExit: ((event) async {
                setState(() => _model.mouseRegionHovered = false);
              }),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (_model.verMenu == 'PessoaFisica') {
                    setState(() {
                      _model.verMenu = '';
                    });
                  } else {
                    setState(() {
                      _model.verMenu = 'PessoaFisica';
                    });
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFFCAE27),
                            borderRadius: 25.0,
                            borderWidth: 0.2,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.person,
                              color: _model.verMenu == 'PessoaFisica'
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('Tela05_PessoaFisica');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (_model.verMenu == 'PessoaJuridica') {
                    setState(() {
                      _model.verMenu = '';
                    });
                  } else {
                    setState(() {
                      _model.verMenu = 'PessoaJuridica';
                    });
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFFCAE27),
                            borderRadius: 25.0,
                            borderWidth: 0.2,
                            buttonSize: 50.0,
                            icon: FaIcon(
                              FontAwesomeIcons.suitcase,
                              color: _model.verMenu == 'PessoaJuridica'
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('Tela06_PessoaJuridica');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (_model.verMenu == 'Credito') {
                    setState(() {
                      _model.verMenu = '';
                    });
                  } else {
                    setState(() {
                      _model.verMenu = 'Credito';
                    });
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFFCAE27),
                            borderRadius: 25.0,
                            borderWidth: 0.2,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.credit_score,
                              color: _model.verMenu == 'Credito'
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('Tela07_operacoes');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (_model.verMenu == 'Seguranca') {
                    setState(() {
                      _model.verMenu = '';
                    });
                  } else {
                    setState(() {
                      _model.verMenu = 'Seguranca';
                    });
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFFCAE27),
                            borderRadius: 25.0,
                            borderWidth: 0.2,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.security_rounded,
                              color: _model.verMenu == 'Seguranca'
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('Tela15_Operadores');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (_model.verMenu == 'Configuracoes') {
                    setState(() {
                      _model.verMenu = '';
                    });
                  } else {
                    setState(() {
                      _model.verMenu = 'Configuracoes';
                    });
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFFCAE27),
                            borderRadius: 25.0,
                            borderWidth: 0.2,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.settings,
                              color: _model.verMenu == 'Configuracoes'
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('recuperarSenha');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Color(0xFFFCAE27),
                                borderRadius: 15.0,
                                borderWidth: 0.2,
                                buttonSize: 48.0,
                                icon: Icon(
                                  Icons.logout,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 16.0,
                                ),
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  await authManager.signOut();
                                  GoRouter.of(context).clearRedirectLocation();

                                  context.goNamedAuth('login', context.mounted);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
