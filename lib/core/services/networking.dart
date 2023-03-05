import 'dart:convert';

import 'package:http/http.dart' as http;
import '../app_constants/app_constants.dart';
import '../models/models.dart';

class Networking {
  static final Networking _networking = Networking._internal();

  factory Networking() {
    return _networking;
  }

  Networking._internal();

  Future<List<LoadUserModel>> loadUsers() async {
    final http.Response response = await http.get(Uri.parse(kLoadUsersApiUrl));
    final jsonData = await _decodeJson(response.body);
    final List<LoadUserModel> users = _creaetUsersList(jsonData['data']);
    return users;
  }

  _decodeJson(String body) {
    return json.decode(body);
  }

  List<LoadUserModel> _creaetUsersList(jsonData) {
    List<LoadUserModel> users = [];
    for (var i = 0; i < jsonData.length; i++) {
      users.add(LoadUserModel.fromMap(jsonData[i]));
    }
    return users;
  }
}
