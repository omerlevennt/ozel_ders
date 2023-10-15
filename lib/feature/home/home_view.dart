import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/constants/locale_keys.dart';
import 'package:ozel_ders/product/utility/padding/only_padding.dart';
import 'package:ozel_ders/product/utility/padding/symmetric_padding.dart';
import 'package:ozel_ders/product/utility/size/widget_custom_size.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';
import 'package:ozel_ders/product/widget/appBar/custom_app_bar.dart';
import 'package:ozel_ders/product/widget/divider/custom_divider.dart';
import 'package:ozel_ders/product/widget/textField/search_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeViewAppBar(),
      body: Padding(
        padding: PagePadding.horizontalNormal,
        child: Column(
          children: [
            const Padding(
              padding: PagePadding.verticalNormal,
              child: _SearchBar(),
            ),
            Expanded(
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: WidgetCustomSize.header.value,
                    child: const Card(
                      elevation: WidgetSizes.zero,
                      color: ThemeColor.concrete,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('sol'),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text('sag'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const CustomDivider();
                },
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SearchBarField()),
        Padding(
          padding: OnlyPadding.onlyLeftLow,
          child: Card(
            elevation: WidgetSizes.zero,
            color: ThemeColor.concrete,
            margin: EdgeInsets.zero,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(Icons.filter_list),
            ),
          ),
        ),
      ],
    );
  }
}

class _HomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeViewAppBar();

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      appBarTitle: LocaleKeys.home,
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/ic_menu.png',
          color: ThemeColor.oxfordBlue,
        ),
      ),
      actions: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/ic_notification.png',
          color: ThemeColor.oxfordBlue,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
