import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _razaoSocial = prefs.getString('ff_razaoSocial') ?? _razaoSocial;
    });
    _safeInit(() {
      _cont = prefs.getInt('ff_cont') ?? _cont;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _verMenu = '';
  String get verMenu => _verMenu;
  set verMenu(String _value) {
    _verMenu = _value;
  }

  bool _menuAberto = false;
  bool get menuAberto => _menuAberto;
  set menuAberto(bool _value) {
    _menuAberto = _value;
  }

  int _popupSMS = 0;
  int get popupSMS => _popupSMS;
  set popupSMS(int _value) {
    _popupSMS = _value;
  }

  String _popDoc = '';
  String get popDoc => _popDoc;
  set popDoc(String _value) {
    _popDoc = _value;
  }

  String _razaoSocial = '';
  String get razaoSocial => _razaoSocial;
  set razaoSocial(String _value) {
    _razaoSocial = _value;
    prefs.setString('ff_razaoSocial', _value);
  }

  String _operacaoSalvaAPI = '';
  String get operacaoSalvaAPI => _operacaoSalvaAPI;
  set operacaoSalvaAPI(String _value) {
    _operacaoSalvaAPI = _value;
  }

  String _tomador = '';
  String get tomador => _tomador;
  set tomador(String _value) {
    _tomador = _value;
  }

  String _cnpj = '';
  String get cnpj => _cnpj;
  set cnpj(String _value) {
    _cnpj = _value;
  }

  int _cont = 0;
  int get cont => _cont;
  set cont(int _value) {
    _cont = _value;
    prefs.setInt('ff_cont', _value);
  }

  String _investidor = '';
  String get investidor => _investidor;
  set investidor(String _value) {
    _investidor = _value;
  }

  String _cryptKey = '';
  String get cryptKey => _cryptKey;
  set cryptKey(String _value) {
    _cryptKey = _value;
  }

  DocumentReference? _documentero;
  DocumentReference? get documentero => _documentero;
  set documentero(DocumentReference? _value) {
    _documentero = _value;
  }

  String _sessionId = '';
  String get sessionId => _sessionId;
  set sessionId(String _value) {
    _sessionId = _value;
  }

  String _sessionExpiresIn = '';
  String get sessionExpiresIn => _sessionExpiresIn;
  set sessionExpiresIn(String _value) {
    _sessionExpiresIn = _value;
  }

  String _authtoken = '';
  String get authtoken => _authtoken;
  set authtoken(String _value) {
    _authtoken = _value;
  }

  String _ramoDeAtividade = '';
  String get ramoDeAtividade => _ramoDeAtividade;
  set ramoDeAtividade(String _value) {
    _ramoDeAtividade = _value;
  }

  String _inscricaoMunicipal = '';
  String get inscricaoMunicipal => _inscricaoMunicipal;
  set inscricaoMunicipal(String _value) {
    _inscricaoMunicipal = _value;
  }

  String _inscricaoEstadual = '';
  String get inscricaoEstadual => _inscricaoEstadual;
  set inscricaoEstadual(String _value) {
    _inscricaoEstadual = _value;
  }

  String _contaB3 = '';
  String get contaB3 => _contaB3;
  set contaB3(String _value) {
    _contaB3 = _value;
  }

  String _website = '';
  String get website => _website;
  set website(String _value) {
    _website = _value;
  }

  String _CNAE = '';
  String get CNAE => _CNAE;
  set CNAE(String _value) {
    _CNAE = _value;
  }

  double _num1 = 0.0;
  double get num1 => _num1;
  set num1(double _value) {
    _num1 = _value;
  }

  double _num2 = 0.0;
  double get num2 => _num2;
  set num2(double _value) {
    _num2 = _value;
  }

  String _textEdit = '';
  String get textEdit => _textEdit;
  set textEdit(String _value) {
    _textEdit = _value;
  }

  double _contador = 0.0;
  double get contador => _contador;
  set contador(double _value) {
    _contador = _value;
  }

  int _count = 0;
  int get count => _count;
  set count(int _value) {
    _count = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
