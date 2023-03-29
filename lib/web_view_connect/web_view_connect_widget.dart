import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'web_view_connect_model.dart';
export 'web_view_connect_model.dart';

class WebViewConnectWidget extends StatefulWidget {
  const WebViewConnectWidget({Key? key}) : super(key: key);

  @override
  _WebViewConnectWidgetState createState() => _WebViewConnectWidgetState();
}

class _WebViewConnectWidgetState extends State<WebViewConnectWidget> {
  late WebViewConnectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebViewConnectModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            pinned: true,
            floating: false,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            iconTheme: IconThemeData(
                color: FlutterFlowTheme.of(context).tertiaryColor),
            automaticallyImplyLeading: true,
            title: Text(
              'smartbags',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Work Sans',
                    color: FlutterFlowTheme.of(context).profit,
                  ),
            ),
            actions: [],
            centerTitle: true,
          )
        ],
        body: Builder(
          builder: (context) {
            return SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: FlutterFlowWebView(
                            url: 'https://kite.zerodha.com',
                            bypass: false,
                            height: MediaQuery.of(context).size.height * 1.0,
                            verticalScroll: false,
                            horizontalScroll: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
