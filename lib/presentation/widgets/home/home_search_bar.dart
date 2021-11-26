import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.h),
      child: Container(
        width: 100.w,
        height: 7.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(237, 241, 250, 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Icon(
                    Icons.search_outlined,
                    size: 3.5.h,
                    color: const Color.fromRGBO(171, 179, 202, 1),
                  ),
                ),
                Text(
                  "Search",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15.sp,
                    height: 1.7,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(171, 179, 202, 1),
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
