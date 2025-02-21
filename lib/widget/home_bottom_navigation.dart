import 'package:flutter/widgets.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

final _tabs = ['书架', '书源', '订阅', '我的'];

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({super.key, required this.onTap});

  /// tab点击事件
  final Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return TDBottomTabBar(
      TDBottomTabBarBasicType.text,
      navigationTabs:
          _tabs
              .map(
                (item) => TDBottomTabBarTabConfig(
                  onTap: () {
                    onTap?.call(_tabs.indexOf(item));
                  },
                  tabText: item,
                ),
              )
              .toList(),
    );
  }
}
