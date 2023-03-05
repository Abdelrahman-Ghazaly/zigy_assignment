import 'dart:convert';
import 'dart:io';

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
    final http.Response response = await _httpGet();
    final jsonData = await _decodeJson(response.body);
    final List<LoadUserModel> users = _creaetUsersList(jsonData['data']);
    return users;
  }

  _httpGet() async {
    return await http.get(Uri.parse(kLoadUsersApiUrl));
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

  Future uploadUser(UploadUserModel userModel) async {
    final Map body = userModel.toMap();
    final http.Response response = await _httpPost(body);
    return response;
  }

  _httpPost(Map body) async {
    await http.post(
      Uri.parse(kUploadUserApiUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(body),
    );
  }
}
