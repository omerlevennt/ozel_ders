import 'package:flutter/material.dart';
import 'package:ozel_ders/feature/model/on_board_model.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({required this.selectedIndex, super.key});
  final int selectedIndex;

  @override
  State<TabIndicator> createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: OnBoardModel.onBoardItems.length, vsync: this);
  }

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _tabController.animateTo(widget.selectedIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      borderStyle: BorderStyle.none,
      color: ThemeColor.alto,
      selectedColor: ThemeColor.oxfordBlue,
      controller: _tabController,
    );
  }
}
