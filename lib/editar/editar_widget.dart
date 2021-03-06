import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EditarWidget extends StatefulWidget {
  const EditarWidget({
    Key key,
    this.banck,
  }) : super(key: key);

  final DocumentReference banck;

  @override
  _EditarWidgetState createState() => _EditarWidgetState();
}

class _EditarWidgetState extends State<EditarWidget>
    with TickerProviderStateMixin {
  DateTime datePicked;
  TextEditingController budController;
  TextEditingController budgetNameController;
  TextEditingController budaController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BancoRecord>(
      stream: BancoRecord.getDocument(widget.banck),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitPumpingHeart(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 40,
              ),
            ),
          );
        }
        final editarBancoRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).darkBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'dfloacs3' /* Edit Bank */,
                                  ),
                                  style: FlutterFlowTheme.of(context).title1,
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color:
                                      FlutterFlowTheme.of(context).background,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    buttonSize: 48,
                                    icon: Icon(
                                      Icons.close_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: TextFormField(
                                controller: budgetNameController ??=
                                    TextEditingController(
                                  text: editarBancoRecord.nome,
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'ky7lr3s8' /* Bank Name */,
                                  ),
                                  labelStyle:
                                      FlutterFlowTheme.of(context).subtitle1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .background,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .background,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 24, 32),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: TextFormField(
                                controller: budController ??=
                                    TextEditingController(
                                  text: editarBancoRecord.dinheiro.toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'kvl2uph8' /* Money */,
                                  ),
                                  labelStyle:
                                      FlutterFlowTheme.of(context).subtitle1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .background,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .background,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 24, 32),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: TextFormField(
                                controller: budaController ??=
                                    TextEditingController(
                                  text: formatNumber(
                                    editarBancoRecord.limite,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                  ),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'mn3lb7ow' /* Limit credit */,
                                  ),
                                  labelStyle:
                                      FlutterFlowTheme.of(context).subtitle1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .background,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .background,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 24, 32),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 100, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'donj26l7' /* Pay Day */,
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await DatePicker.showDatePicker(
                                    context,
                                    showTitleActions: true,
                                    onConfirm: (date) {
                                      setState(() => datePicked = date);
                                    },
                                    currentTime: getCurrentTimestamp,
                                    minTime: DateTime(0, 0, 0),
                                    locale: LocaleType.values.firstWhere(
                                      (l) =>
                                          l.name ==
                                          FFLocalizations.of(context)
                                              .languageCode,
                                      orElse: null,
                                    ),
                                  );
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .darkBackground,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .background,
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 0, 0, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3fhyh7df' /* Choose Date */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 4, 0, 0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'MMMMEEEEd', datePicked),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiaryColor,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 8, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                buttonSize: 46,
                                                icon: Icon(
                                                  Icons.date_range_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .grayLight,
                                                  size: 20,
                                                ),
                                                onPressed: () {
                                                  print(
                                                      'IconButton pressed ...');
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                final bancoUpdateData = createBancoRecordData(
                                  nome: budgetNameController?.text ?? '',
                                  dinheiro:
                                      double.parse(budaController?.text ?? ''),
                                  limite:
                                      double.parse(budaController?.text ?? ''),
                                  dataCartao: datePicked,
                                );
                                await editarBancoRecord.reference
                                    .update(bancoUpdateData);
                                await CalculasaldoCall.call(
                                  idUsuario: currentUserUid,
                                );
                                Navigator.pop(context);
                              },
                              text: FFLocalizations.of(context).getText(
                                'jsdqds5p' /* Edit Bank */,
                              ),
                              options: FFButtonOptions(
                                width: 300,
                                height: 70,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                textStyle: FlutterFlowTheme.of(context).title1,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 12,
                              ),
                            ).animated(
                                [animationsMap['buttonOnPageLoadAnimation']]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'q4ce7ebt' /* Tap above to complete request */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0x43000000),
                        ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
