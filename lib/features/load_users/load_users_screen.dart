import 'package:flutter/material.dart';
import '../../core/models/user/load_user_model.dart';
import '../../core/services/networking.dart';

import '../../core/common_widgets/common_widgets.dart';

class LoadUsersScreen extends StatefulWidget {
  const LoadUsersScreen({Key? key}) : super(key: key);

  @override
  LoadUsersScreenState createState() => LoadUsersScreenState();
}

class LoadUsersScreenState extends State<LoadUsersScreen> {
  List<LoadUserModel>? users;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    List<LoadUserModel> response = await Networking().loadUsers();
    setState(() {});
    users = response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Load a list of users'),
      body: FutureBuilder(
        future: _getData(),
        builder: (context, snapshot) {
          return users == null
              ? const LoadingWidget()
              : ListView.builder(
                  itemCount: users!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UserCard(
                        userModel: users![index],
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
