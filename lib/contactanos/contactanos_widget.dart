import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactanosWidget extends StatefulWidget {
  const ContactanosWidget({Key? key}) : super(key: key);

  @override
  _ContactanosWidgetState createState() => _ContactanosWidgetState();
}

class _ContactanosWidgetState extends State<ContactanosWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 30),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [],
                          ),
                        ),
                        Text(
                          'Contactanos',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Overpass',
                                color: Color(0xFF21AEF7),
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                'Selecciona la mejor para ti',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await launchUrl(Uri(
                        scheme: 'sms',
                        path: '+525515722152',
                      ));
                    },
                    text: '',
                    icon: Icon(
                      Icons.message,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 50,
                      height: 50,
                      color: Color(0xFF21AEF7),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Overpass',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 2,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(110),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await launchUrl(Uri(
                        scheme: 'tel',
                        path: '+525515722152',
                      ));
                    },
                    text: '',
                    icon: Icon(
                      Icons.phone,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 50,
                      height: 50,
                      color: Color(0xFF21AEF7),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Overpass',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 2,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(110),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await launchUrl(Uri(
                        scheme: 'mailto',
                        path: 'sramirezsaintclair@gmail.com',
                      ));
                    },
                    text: '',
                    icon: Icon(
                      Icons.mail,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 50,
                      height: 50,
                      color: Color(0xFF21AEF7),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Overpass',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 2,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(110),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
