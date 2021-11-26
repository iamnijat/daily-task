import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardBubble extends StatelessWidget {
  const CardBubble({
    Key key,
    @required this.avatars,
    @required this.i,
  }) : super(key: key);

  final List avatars;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizerUtil.deviceType == DeviceType.tablet
  ? 27.h : 19.h,
      width: 40.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: const Color.fromRGBO(245, 247, 252, 1)),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.5.h, vertical: 2.h),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          "${avatars[i]['title']}\n${avatars[i]['subtitle']}\n",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: "${avatars[i]['memory']}",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 10.sp,
                          height: 1.8,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 2, top: 15),
                child: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.grey,
                  size: 3.h,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Row(
              children: <Widget>[
                for (int i = 0; i < avatars.length; i++)
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      avatars[i]['img'],
                    ),
                    radius: 1.h,
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
