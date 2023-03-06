import 'package:flutter/material.dart' as flutter_material;
import 'package:zigy_assignment/core/common_widgets/common_widgets.dart';
import 'package:zigy_assignment/core/models/user/upload_user_model.dart';

class Utilities {
  static final Utilities _utilities = Utilities._internal();

  factory Utilities() {
    return _utilities;
  }

  Utilities._internal();

  double get screenHeight => flutter_material.MediaQueryData.fromWindow(
          flutter_material.WidgetsBinding.instance.window)
      .size
      .height;

  double get screenWidth => flutter_material.MediaQueryData.fromWindow(
          flutter_material.WidgetsBinding.instance.window)
      .size
      .width;

  showDialog(flutter_material.BuildContext context, UploadUserModel userModel) {
    flutter_material.showDialog(
      context: context,
      builder: (context) => UserUploadDialog(userModel: userModel),
    );
  }
}
