part of 'service.dart';

class UserServices {
  static Future<ApiReturnValue<User>> singIn(
      String email, String password) async {
    await Future.delayed(Duration(milliseconds: 500));

    // Login berhasil
    return ApiReturnValue(value: mockUser);

    // Login gagal
    // return ApiReturnValue(message: "Email atau password salah");
  }
}
