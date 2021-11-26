import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../clippers/wave_clipper.dart';
import '../widgets/home/bottom_navigation.dart';
import '../widgets/home/home_search_bar.dart';
import '../widgets/storage/storage_card.dart';
import '../widgets/storage/storage_file.dart';
import '../widgets/storage/storage_title.dart';

class StoragePage extends StatelessWidget {
  const StoragePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        shape: CustomShapeBorder(),
        backgroundColor: const Color.fromRGBO(137, 170, 250, 1),
        elevation: 0.0,
        bottomOpacity: 0.0,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 6.h,
            ),
            const StorageTitle(),
            SizedBox(
              height: 1.h,
            ),
            const HomeSearchBar(),
            SizedBox(
              height: 3.h,
            ),
            const StorageCard(),
            const StorageFile(),
          ],
        ),
      ),
    );
  }
}
