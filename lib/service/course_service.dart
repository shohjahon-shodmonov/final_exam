import 'package:dio/dio.dart';

class OrganService {
  
  static Future getCategory() async {
    Response res = await Dio().get(
      'http://localhost:1337/api/codings?populate=*',
    );
    return res.data['data'];
  }
}
