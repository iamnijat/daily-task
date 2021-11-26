import 'package:flutter/material.dart';

import '../../pages/home_page.dart';
import '../../pages/modal_page.dart';
import '../../pages/storage_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  void _showModalBottomSheet(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(140.0),
          topRight: Radius.circular(140.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return const ModalPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: (value) {
        currentIndex = value;

        switch (value) {
          case 0:
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage()));
            break;
          case 1:
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const StoragePage()));
            break;
          case 2:
            _showModalBottomSheet(context);
            break;
        }
        setState(() {});
      },
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.cloud),
          // ignore: deprecated_member_use
          title: Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.cloud_done_rounded),
          // ignore: deprecated_member_use
          title: Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/plus.png",
            fit: BoxFit.cover,
            width: 35,
            height: 35,
          ),
          // ignore: deprecated_member_use
          title: const Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.notification_add,
          ),
          // ignore: deprecated_member_use
          title: Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          // ignore: deprecated_member_use
          title: Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

enum AvailableNumber { first, second, third, fourth, fifth }
