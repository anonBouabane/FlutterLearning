const baseUrl = "https://node-server-api-q7vr.onrender.com/api/v1";

class ApiPath {
  static const String login = "${baseUrl}/user/login";
  static const String register = "${baseUrl}/user/register";
  static const String refreshToken = "${baseUrl}/user/refreshToken";
}
