import 'package:flutter/material.dart';
import 'package:zigy_assignment/core/services/utilities.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Utilities().screenHeight,
      width: Utilities().screenWidth,
      color: Colors.black.withOpacity(0.4),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
