import 'package:flutter/material.dart';
import 'package:ozel_ders/feature/home/home_view.dart';
import 'package:ozel_ders/feature/messages/messages_view.dart';
import 'package:ozel_ders/feature/plan/plan_view.dart';
import 'package:ozel_ders/feature/profile/profile_view.dart';
import 'package:ozel_ders/product/enum/tab_enum.dart';
import 'package:ozel_ders/product/widget/button/add_fab_button.dart';

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
    _tabController = TabController(length: TabEnum.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TabEnum.values.length,
      child: Scaffold(
        floatingActionButton: const AddFabButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        bottomNavigationBar: SafeArea(
          child: BottomAppBar(
            notchMargin: 10,
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
      tabs: TabEnum.values
          .map(
            (e) => SizedBox(
              width: 70,
              child: Tab(
                text: e.name,
              ),
            ),
          )
          .toList(),
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
