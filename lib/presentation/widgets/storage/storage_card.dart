import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../data/models/card_model.dart';

class StorageCard extends StatelessWidget {
  const StorageCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      padding: EdgeInsets.only(left: 8.w),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: cardModel.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(bottom: 25),
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 30),
                height: 8.h,
                width: 18.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: cardModel[index].backgroundColor,
                ),
                child: Icon(
                  cardModel[index].icon,
                  color: cardModel[index].primaryColor,
                  size: 4.h,
                ),
              ),
              SizedBox(
                height: 1.2.h,
              ),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: Text(
                  cardModel[index].name,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12.sp,
                    letterSpacing: 1.4,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
