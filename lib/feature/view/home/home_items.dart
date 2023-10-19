part of 'home_view.dart';

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
          ImageConstants.icMenu,
          color: ThemeColor.oxfordBlue,
        ),
      ),
      actions: IconButton(
        onPressed: () {},
        icon: Image.asset(
          ImageConstants.icNotification,
          color: ThemeColor.oxfordBlue,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
