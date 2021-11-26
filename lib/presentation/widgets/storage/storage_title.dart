import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StorageTitle extends StatelessWidget {
  const StorageTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
      ),
      child: Row(
        children: [
          Text(
            "Local Storage",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 19.sp,
              letterSpacing: 1.4,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(36, 76, 170, 1),
            ),
          ),
        ],
      ),
    );
  }
}
