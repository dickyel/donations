import 'package:donations/pages/bookmark_page.dart';
import 'package:donations/pages/setting_page.dart';
import 'package:donations/pages/wallet_page.dart';
import 'package:donations/theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() => ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: buttonSplashColor,
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(
                () {
                  currentIndex = value;
                },
              );
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/ic_home.svg',
                  width: 24,
                  color: currentIndex == 0 ? btnHome : btnHome2,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/ic_wallet.svg',
                  width: 24,
                  color: currentIndex == 1 ? btnHome : btnHome2,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/ic_work.svg',
                  width: 24,
                  color: currentIndex == 2 ? btnHome : btnHome2,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/ic_setting.svg',
                  width: 24,
                  color: currentIndex == 4 ? btnHome : btnHome2,
                ),
                label: '',
              ),
            ],
          ),
        );

    Widget main() {
      currentIndex = currentIndex;
      switch (currentIndex) {
        case 0:
          return const HomePage();
          // ignore: dead_code
          break;
        case 1:
          return const WalletPage();
          // ignore: dead_code
          break;
        case 2:
          return const BookmarkPage();
          // ignore: dead_code
          break;
        case 3:
          return const SettingPage();
          // ignore: dead_code
          break;

        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: buttonSplashColor,
      body: main(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
