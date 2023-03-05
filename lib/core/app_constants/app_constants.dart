import 'package:flutter/material.dart';
import 'package:zigy_assignment/core/services/services.dart';

const double kAppBarHeight = 50;
const String kLoadUsersApiUrl = 'https://reqres.in/api/users?page=2';
const String kUploadUserApiUrl = 'https://reqres.in/api/users';

const TextStyle kNameStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w600,
);
const TextStyle kEmailStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
);

const InputDecoration kTextFieldDecoration = InputDecoration(
  labelText: 'data',
  prefixIcon: Icon(
    Icons.cases_outlined,
  ),
);

final ButtonStyle kButtonStyle = ButtonStyle(
  elevation: const MaterialStatePropertyAll(5),
  backgroundColor: const MaterialStatePropertyAll(Colors.amber),
  fixedSize: MaterialStatePropertyAll(
    Size(
      Utilities().screenWidth * 0.7,
      50,
    ),
  ),
  shape: MaterialStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
);
