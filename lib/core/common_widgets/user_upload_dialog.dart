import 'package:flutter/material.dart';
import 'package:zigy_assignment/core/models/models.dart';
import 'package:zigy_assignment/core/services/services.dart';

import '../app_constants/app_constants.dart';

class UserUploadDialog extends StatelessWidget {
  const UserUploadDialog({Key? key, required this.userModel}) : super(key: key);
  final UploadUserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: Utilities().screenWidth,
        height: Utilities().screenHeight * 0.2,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    userModel.name,
                    style: kNameStyle,
                  ),
                  Text(
                    userModel.job,
                    style: kEmailStyle,
                  ),
                  Text(
                    userModel.createdAt,
                    style: kEmailStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Text(
                userModel.id,
                style: kNameStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
