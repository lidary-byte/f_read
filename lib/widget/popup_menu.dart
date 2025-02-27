import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class PopupMenu extends TDNavBarItem {
  PopupMenuItemBuilder itemBuild;

  PopupMenu(this.itemBuild);

  @override
  Widget toWidget(BuildContext context, {bool isLeft = true}) {
    return PopupMenuButton(itemBuilder: itemBuild);
  }
}
