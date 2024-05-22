import 'package:http/http.dart' as http;
class CategoryService {
  Future<List<dynamic>?> getproduct() async {
    try {
      http.post(Uri.parse(""),body: "",headers: {});
    } catch (e) {}
  }
}
