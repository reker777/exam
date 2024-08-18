import 'package:dio/dio.dart';
import 'package:exam_project/model/exammodel.dart';

class ApiService{
  static Future getData () async {
    Dio dio = Dio();
    Response response = await dio.get ("http://192.168.100.97:3040/flowers");
    if (response.statusCode == 200) {
      List<dynamic> data = response.data['data'];
      Iterable<Welcome> welcome = data.map((v) => Welcome.fromJson(v)).toList();
      return welcome;
    }
    return[];
  }
}