import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/Usermodel.dart';

class ApiService {
  Future<Userdata?> getUser() async {
    try {
      String url = "https://reqres.in/api/users";
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        if (response.statusCode == 200) {
          return Userdata.fromJson(jsonResponse);
          //print(jsonResponse);
        }

        //return _userModel;
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
