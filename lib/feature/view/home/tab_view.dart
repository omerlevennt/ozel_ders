import 'package:flutter/material.dart';
import 'package:ozel_ders/feature/view/home/home_view.dart';
import 'package:ozel_ders/feature/view/messages_view.dart';
import 'package:ozel_ders/feature/view/plan_view.dart';
import 'package:ozel_ders/feature/view/profile_view.dart';
import 'package:ozel_ders/product/utility/constants/constants.dart';
import 'package:ozel_ders/product/utility/constants/image_constants.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';
import 'package:ozel_ders/product/widget/button/add_fab_button.dart';
import 'package:ozel_ders/product/widget/tab/circle_avatar.dart';
import 'package:ozel_ders/product/widget/tab/tab_bar_items.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: Constants.tabBarLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Constants.tabBarLength,
      child: Scaffold(
        floatingActionButton: const AddFabButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        bottomNavigationBar: SafeArea(
          child: BottomAppBar(
            notchMargin: WidgetSizes.spacingS,
            child: _myTab(),
          ),
        ),
        body: SafeArea(child: _tabBarView()),
      ),
    );
  }

  TabBar _myTab() {
    return TabBar(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      controller: _tabController,
      tabs: <Widget>[
        TabBarItems(
          icon: Image.asset(
            ImageConstants.icSearch,
            color: ThemeColor.oxfordBlue,
          ),
        ),
        TabBarItems(
          icon: Image.asset(
            ImageConstants.icMessage,
            color: ThemeColor.oxfordBlue,
          ),
        ),
        TabBarItems(
          icon: Image.asset(
            ImageConstants.icCalendar,
            color: ThemeColor.oxfordBlue,
          ),
        ),
        const CircleAvatarTab(
          url: Constants.profileImage,
        ),
      ],
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: const [
        HomeView(),
        MessagesView(),
        PlanView(),
        ProfileView(),
      ],
    );
  }
}
