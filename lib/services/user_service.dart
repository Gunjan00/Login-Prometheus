import 'package:chopper/chopper.dart';
import 'package:login_app/models/user.dart';
//import 'package:login_app/models/userdetails.dart';

import 'converter.dart';
part 'user_service.chopper.dart';

@ChopperApi(baseUrl: '/api/Admin')
abstract class UserService extends ChopperService {

  @Get()
  Future<Response<User>> getUsers();

  @Post(path: '/Account/ValidateUser', headers: {"Content-Type": "application/json"})
  Future<Response<User>> postUser(
      @Body() Map<String,String> body,
      );

  @Post(path: '/Account/GenerateResetLink', headers: {"Content-Type": "application/json"})
  Future<Response<User>> getPassword(
      @Body() Map<String,String> body,
      );

  static UserService create() {
    final client = ChopperClient(
      baseUrl: 'https://paxesapiint.techmaster.in',
      services: [
        _$UserService(),
      ],
      converter: JsonToTypeConverter({
        User: (jsonData) => User.fromJson(jsonData)
      }
      ),
    );
    return _$UserService(client);
  }
}