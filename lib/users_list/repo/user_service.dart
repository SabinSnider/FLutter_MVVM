import 'package:flutter_mvvm/users_list/models/users_list_model.dart';
import 'package:http/http.dart' as http;

import '../../utils/constants.dart';

class UserServices {
  static Future<Object> getUsers() async {
    try {
      var url = Uri.parse(USERS_LIST);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        return usersListModelFromJson(response.body);
      }
    } catch (e) {
      //
    }
  }
}
