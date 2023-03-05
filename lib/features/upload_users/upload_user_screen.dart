import 'package:flutter/material.dart';
import 'package:zigy_assignment/core/app_constants/app_constants.dart';
import 'package:zigy_assignment/core/services/services.dart';

import '../../core/common_widgets/custom_app_bar.dart';
import 'widgets/custom_text_field.dart';

class UploadUserScreen extends StatefulWidget {
  const UploadUserScreen({super.key});

  @override
  State<UploadUserScreen> createState() => _UploadUserScreenState();
}

class _UploadUserScreenState extends State<UploadUserScreen> {
  late TextEditingController emailController;
  late TextEditingController jobController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    jobController = TextEditingController();
  }

  _createUploadUserModel() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Upload a user'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomTextField(
              controller: emailController,
              icon: Icons.person,
              labelText: 'Name',
            ),
            CustomTextField(
              controller: jobController,
              icon: Icons.cases_outlined,
              labelText: 'Job',
            ),
            ElevatedButton(
              onPressed: () {},
              style: kButtonStyle,
              child: Text(
                'Upload Data',
                style: kNameStyle.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
