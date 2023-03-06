import 'package:flutter/material.dart';
import 'package:zigy_assignment/core/app_constants/app_constants.dart';
import 'package:zigy_assignment/core/common_widgets/common_widgets.dart';
import 'package:zigy_assignment/core/models/models.dart';
import 'package:zigy_assignment/core/services/services.dart';

import '../../core/common_widgets/custom_app_bar.dart';
import 'widgets/custom_text_field.dart';

class UploadUserScreen extends StatefulWidget {
  const UploadUserScreen({super.key});

  @override
  State<UploadUserScreen> createState() => _UploadUserScreenState();
}

class _UploadUserScreenState extends State<UploadUserScreen> {
  late TextEditingController _nameController;
  late TextEditingController _jobController;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _jobController = TextEditingController();
  }

  _changeLoadingState() {
    isLoading = !isLoading;
    setState(() {});
  }

  _uploadUserData() async {
    UploadUserModel userModel = _createUploadUserModelFromInput();
    Map<String, dynamic> response = await Networking().uploadUser(userModel);
    userModel = UploadUserModel.fromMap(response);
    return userModel;
  }

  _createUploadUserModelFromInput() {
    UploadUserModel userModel = UploadUserModel.fromUserInput(
      name: _nameController.text,
      job: _jobController.text,
    );
    return userModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Upload a user'),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                  controller: _nameController,
                  icon: Icons.person,
                  labelText: 'Name',
                ),
                CustomTextField(
                  controller: _jobController,
                  icon: Icons.cases_outlined,
                  labelText: 'Job',
                ),
                ElevatedButton(
                  onPressed: () async {
                    _changeLoadingState();
                    final UploadUserModel userModel = await _uploadUserData();
                    _changeLoadingState();
                    if (!mounted) return;
                    Utilities().showDialog(context, userModel);
                  },
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
          isLoading ? const Positioned(child: LoadingWidget()) : Container()
        ],
      ),
    );
  }
}
