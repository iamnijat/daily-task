import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizerUtil.deviceType == DeviceType.tablet
  ? 45.h :32.2.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(51, 109, 243, 1),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 4.h),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Hello Jessie,\n",
                      style: TextStyle(
                          fontSize: 21.sp,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.4),
                    ),
                    TextSpan(
                      text: "at the moment you have",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14.sp,
                          height: 1.7,
                          letterSpacing: 1.4,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(171, 195, 252, 1)),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "32,5 GB ",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2),
                    ),
                    TextSpan(
                      text: "of 100 GB",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13.sp,
                          height: 1.7,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(171, 195, 252, 1)),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.h),
            child: LinearPercentIndicator(
              width: 85.w,
              lineHeight: 5.0,
              percent: 0.6,
              backgroundColor: const Color.fromRGBO(45, 96, 214, 1),
              progressColor: const Color.fromRGBO(255, 106, 162, 1),
            ),
          ),
        ],
      ),
    );
  }
}
