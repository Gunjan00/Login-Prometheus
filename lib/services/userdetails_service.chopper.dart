// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userdetails_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$UserDetailsService extends UserDetailsService {
  _$UserDetailsService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserDetailsService;

  @override
  Future<Response<dynamic>> getUserDetails(Map<String, dynamic> body) {
    final $url = '/api/Admin/User/UserRequiredDetails';
    final $headers = {'Content-Type': 'application/json'};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
