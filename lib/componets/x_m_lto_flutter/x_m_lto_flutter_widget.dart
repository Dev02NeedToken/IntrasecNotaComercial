import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'x_m_lto_flutter_model.dart';
export 'x_m_lto_flutter_model.dart';

class XMLtoFlutterWidget extends StatefulWidget {
  const XMLtoFlutterWidget({Key? key}) : super(key: key);

  @override
  _XMLtoFlutterWidgetState createState() => _XMLtoFlutterWidgetState();
}

class _XMLtoFlutterWidgetState extends State<XMLtoFlutterWidget> {
  late XMLtoFlutterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => XMLtoFlutterModel());

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

    return Container();
  }
}
