import 'package:chopper/chopper.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/models/userdetails.dart';

import 'converter.dart';
part 'userdetails_service.chopper.dart';

@ChopperApi(baseUrl: '/api/Admin')
abstract class UserDetailsService extends ChopperService {


  @Post(path: '/User/UserRequiredDetails', headers: {"Content-Type": "application/json"})
  Future<Response> getUserDetails(
      @Body() Map<String,dynamic> body,
      );

  static UserDetailsService create() {
    final client = ChopperClient(
      baseUrl: 'https://paxesapiint.techmaster.in',
      services: [
        _$UserDetailsService(),
      ],
      converter: JsonConverter(),
      // converter: JsonToTypeConverter({
      //   UserDetails: (jsonData) => UserDetails.fromJson(jsonData)
      // }
      // ),
    );
    return _$UserDetailsService(client);
  }
}