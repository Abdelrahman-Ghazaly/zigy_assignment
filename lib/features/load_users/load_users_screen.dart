import 'package:flutter/material.dart';

import '../../core/common_widgets/custom_app_bar.dart';
import '../../core/models/models.dart';

class LoadUsersScreen extends StatefulWidget {
  const LoadUsersScreen({Key? key}) : super(key: key);

  @override
  LoadUsersScreenState createState() => LoadUsersScreenState();
}

class LoadUsersScreenState extends State<LoadUsersScreen> {
  late List<LoadUserModel> user = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Load a list of users'),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container();
        },
      ),
    );
  }
}
