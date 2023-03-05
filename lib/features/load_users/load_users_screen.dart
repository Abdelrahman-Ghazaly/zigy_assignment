import 'package:flutter/material.dart';
import 'package:zigy_assignment/core/common_widgets/custom_app_bar.dart';

class LoadUsersScreen extends StatefulWidget {
  const LoadUsersScreen({Key? key}) : super(key: key);

  @override
  LoadUsersScreenState createState() => LoadUsersScreenState();
}

class LoadUsersScreenState extends State<LoadUsersScreen> {
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
