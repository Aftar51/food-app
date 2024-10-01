part of 'service.dart';

class UserServices {
  static Future<ApiReturnValue<User>> singIn(
      String email, String password) async {

    return ApiReturnValue(value: mockUser);

  }
}
