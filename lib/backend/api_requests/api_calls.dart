import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class AtualizarfaturaCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
    String idFatura = '',
    String valor = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'atualizarfatura',
      apiUrl:
          'https://30c5-186-224-1-128.ngrok.io/descontar_transacao/{idUsuario}/{idFatura}/{valor}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'idUsuario': idUsuario,
        'idFatura': idFatura,
        'valor': valor,
      },
      returnBody: true,
    );
  }
}

class DescontarfixoCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
    String idFatura = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'descontarfixo',
      apiUrl:
          'https://30c5-186-224-1-128.ngrok.io/descontar/{idUsuario}/{idFatura}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'idUsuario': idUsuario,
        'idFatura': idFatura,
      },
      returnBody: true,
    );
  }
}

class CalculasaldoCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'calculasaldo',
      apiUrl: 'https://30c5-186-224-1-128.ngrok.io/calcula_saldo/{idUsuario}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'idUsuario': idUsuario,
      },
      returnBody: true,
    );
  }
}

class CriarbanconubankCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'criarbanconubank',
      apiUrl: 'https://30c5-186-224-1-128.ngrok.io/nubank/{idUsuario}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'idUsuario': idUsuario,
      },
      returnBody: true,
    );
  }
}

class AtualizabancoCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'atualizabanco',
      apiUrl: 'https://30c5-186-224-1-128.ngrok.io/nubank_banco/{idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'idUsuario': idUsuario,
      },
      returnBody: true,
    );
  }
}

class ParcelarCall {
  static Future<ApiCallResponse> call({
    String idFatura = '',
    String vezes = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'parcelar',
      apiUrl:
          'https://30c5-186-224-1-128.ngrok.io/parcelas/{idFatura}/{vezes}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'idFatura': idFatura,
        'vezes': vezes,
      },
      returnBody: true,
    );
  }
}
