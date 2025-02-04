import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:vipani/features/data/repository/fake_repository.dart';
import 'package:vipani/features/presentation/pages/add_video_page.dart';
import 'package:vipani/features/presentation/pages/home_page.dart';
import 'package:vipani/features/presentation/pages/left_page.dart';
import 'package:vipani/features/presentation/pages/right_page.dart';
import 'package:vipani/features/presentation/widgets/message.dart';

class ShopPreviewWidget extends StatefulWidget {
  late int index;

  ShopPreviewWidget({Key? key, required this.index}) : super(key: key);

  @override
  _ShopPreviewWidgetState createState() => _ShopPreviewWidgetState();
}

class _ShopPreviewWidgetState extends State<ShopPreviewWidget> {
  // int _initialIndex = 0;
  // final PageController _pageViewController = PageController(initialPage: 1);
  // int _pageIndex = 1;
  // PageController _pageController = PageController(
  //   initialPage: 1,
  // );

  int _pageController = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    _pages = [
      HomePage(index: widget.index),
      LeftPage(),
      RightPage(index: widget.index),
      MessageWidget(),
      LeftPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.red,
            selectedFontSize: 0,
            unselectedItemColor: Colors.white,
            currentIndex: _pageController,
            onTap: (value) {
              _pageController = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Home 3.png")), label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Search 2.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/add.png")), label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Message 30.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/profile1.jpg")), label: "")
            ],
          ),
          body: _pages[_pageController],
        );
      },
    );
  }
}
