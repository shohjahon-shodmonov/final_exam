import 'package:dio/dio.dart';

class ContentService {
  
  static Future getContent() async {
    Response res = await Dio().get(
      'http://localhost:1337/api/flutters?populate=*',
    );
    return res.data['data'];
  }
}
