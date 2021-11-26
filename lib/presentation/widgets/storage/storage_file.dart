import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../data/models/file_model.dart';

class StorageFile extends StatelessWidget {
  const StorageFile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: fileModel.length,
      shrinkWrap: true,
      padding: const EdgeInsets.only(bottom: 25),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 4.w, left: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 30),
                    height: 6.h,
                    width: 14.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: fileModel[index].backgroundColor,
                    ),
                    child: Icon(
                      fileModel[index].icon,
                      color: fileModel[index].primaryColor,
                      size: 3.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "${fileModel[index].title}\n",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                            text: "${fileModel[index].subtitle}\n",
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.grey,
                  size: 3.h,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
