import 'package:flutter/material.dart';
import 'package:zigy_assignment/core/app_constants/app_constants.dart';
import 'package:zigy_assignment/core/models/models.dart';
import 'package:zigy_assignment/core/services/services.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.userModel}) : super(key: key);
  final LoadUserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            CircleAvatar(
              backgroundImage: NetworkImage(userModel.avatar),
              radius: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      userModel.firstName,
                      style: kNameStyle,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      userModel.lastName,
                      style: kNameStyle,
                    ),
                  ],
                ),
                Text(
                  userModel.email,
                  style: kEmailStyle,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
