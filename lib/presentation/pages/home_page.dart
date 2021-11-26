import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import '../clippers/wave_clipper.dart';
import '../widgets/home/bottom_navigation.dart';
import '../widgets/home/card_bubble.dart';
import '../widgets/home/home_search_bar.dart';
import '../widgets/home/home_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _controller;
  List avatars = [];

  // Loading json file
  _readJsonData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/avatar.json')
        .then((value) {
      setState(() {
        avatars = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this, initialIndex: 1);
    _readJsonData();
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(51, 109, 243, 1),
        appBar: AppBar(
          toolbarHeight: 0,
          shape: CustomShapeBorder(),
          backgroundColor: const Color.fromRGBO(137, 170, 250, 1),
          elevation: 0.0,
          bottomOpacity: 0.0,
        ),
        body: Column(
          children: <Widget>[
            const HomeSlider(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 3.h,
                      ),
                      const HomeSearchBar(),
                      SizedBox(
                        width: double.maxFinite,
                        height: SizerUtil.deviceType == DeviceType.tablet
                            ? 8.h
                            : 5.h,
                        child: TabBar(
                          indicatorColor: const Color.fromRGBO(68, 123, 251, 1),
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: const Color.fromRGBO(68, 123, 251, 1),
                          unselectedLabelColor: Colors.grey,
                          controller: _controller,
                          indicatorWeight: 5.0,
                          indicator: MaterialIndicator(
                            color: const Color.fromRGBO(68, 123, 251, 1),
                            horizontalPadding: 30,
                            height: 5,
                            topLeftRadius: 8,
                            topRightRadius: 8,
                            paintingStyle: PaintingStyle.fill,
                          ),
                          tabs: [
                            Tab(
                              child: Text(
                                "FILES",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins",
                                    fontSize: 13.sp),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "FOLDERS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins",
                                    fontSize: 13.sp),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        height: 50.h,
                        child: TabBarView(
                          controller: _controller,
                          children: <Widget>[
                            Center(
                              child: Text(
                                "There is nothing to show about",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14.sp,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4.h, horizontal: 4.h),
                              child: Wrap(
                                runSpacing: 25,
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.spaceBetween,
                                children: <Widget>[
                                  for (int i = 0; i < avatars.length; i++)
                                    CardBubble(avatars: avatars, i: i)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavigation());
  }
}
