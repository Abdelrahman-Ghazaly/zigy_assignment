import 'package:flutter/material.dart';

import '../../core/common_widgets/custom_app_bar.dart';

class UploadUserScreen extends StatefulWidget {
  const UploadUserScreen({super.key});

  @override
  State<UploadUserScreen> createState() => _UploadUserScreenState();
}

class _UploadUserScreenState extends State<UploadUserScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Upload a user'),
    );
  }
}
