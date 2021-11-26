import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ModalPage extends StatelessWidget {
  const ModalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5.h,
          ),
          Center(
            child: Container(
              height: 8.h,
              width: 18.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(232, 239, 255, 1)),
              child: Icon(
                Icons.camera_alt_outlined,
                color: const Color.fromRGBO(68, 123, 251, 1),
                size: 4.h,
              ),
            ),
          ),
          SizedBox(
            height: 1.2.h,
          ),
          Text(
            "Photo",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 12.sp,
              letterSpacing: 1.4,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 8.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(232, 239, 255, 1)),
                      child: Icon(
                        Icons.document_scanner_outlined,
                        color: const Color.fromRGBO(68, 123, 251, 1),
                        size: 4.h,
                      ),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      "Scan",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12.sp,
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 8.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(232, 239, 255, 1)),
                      child: Icon(
                        Icons.file_upload_outlined,
                        color: const Color.fromRGBO(68, 123, 251, 1),
                        size: 4.h,
                      ),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      "Upload",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12.sp,
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 6.h,
            width: 13.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(232, 239, 255, 1),
                 boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          spreadRadius: 5,
                          offset: Offset(8, 8),
                        ),
                      ],
                ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                size: 3.5.h,
              ),
              color: const Color.fromRGBO(68, 123, 251, 1),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }
}
