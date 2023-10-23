import 'package:flutter/material.dart';
import 'package:ozel_ders/feature/model/on_board_model.dart';
import 'package:ozel_ders/feature/view/home/tab_view.dart';
import 'package:ozel_ders/product/extension/context_extension.dart';
import 'package:ozel_ders/product/utility/constants/locale_keys.dart';
import 'package:ozel_ders/product/utility/padding/only_padding.dart';
import 'package:ozel_ders/product/utility/padding/symmetric_padding.dart';
import 'package:ozel_ders/product/widget/button/elevated_button.dart';
import 'package:ozel_ders/product/widget/indicator/tab_indicator.dart';
import 'package:ozel_ders/product/widget/text/ink_well.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  int _selectedIndex = 0;

  void _incrementAndChange([int? value]) {
    if (_selectedIndex == OnBoardModel.onBoardItems.length - 1 &&
        value == null) {
      return;
    }
    _incrementSelectedPage(value);
  }

  void _incrementSelectedPage([int? value]) {
    setState(() {
      _selectedIndex = value ?? _selectedIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: SymmetricPadding.horizontalNormal,
        child: Column(
          children: [
            Expanded(
              child: _pageViewItmes(),
            ),
            Padding(
              padding: OnlyPadding.bottomLow,
              child: TabIndicator(
                selectedIndex: _selectedIndex,
              ),
            ),
            Padding(
              padding: OnlyPadding.bottomLow,
              child: CustomElevatedButton(
                title: LocaleKeys.started,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) {
                        return const TabView();
                      },
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: OnlyPadding.bottomNormal,
              child: _OnBoardWrap(),
            ),
          ],
        ),
      ),
    );
  }

  PageView _pageViewItmes() {
    return PageView.builder(
      onPageChanged: _incrementAndChange,
      itemCount: OnBoardModel.onBoardItems.length,
      itemBuilder: (context, index) {
        final item = OnBoardModel.onBoardItems[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: OnlyPadding.bottomNormal,
              child: Image.asset(item.imagePath),
            ),
            Column(
              children: [
                FittedBox(
                  child: Text(
                    item.title,
                    style: context.textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: OnlyPadding.topLow,
                  child: Text(
                    item.description,
                    style: context.textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _OnBoardWrap extends StatelessWidget {
  const _OnBoardWrap();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: [
        Text(
          LocaleKeys.dontHaveAnAccount,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
        CustomInkWellText(
          text: LocaleKeys.signUp,
          onTab: () {
            showCustomSheet(context);
          },
        ),
      ],
    );
  }
}

Future<T?> showCustomSheet<T>(BuildContext context) async {
  return showModalBottomSheet<T>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    context: context,
    builder: (context) {
      return SafeArea(
        child: Padding(
          padding: SymmetricPadding.horizontalNormal,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: SymmetricPadding.verticalLow,
                child: _BaseSheetHeader(),
              ),
              FittedBox(
                child: Text(
                  LocaleKeys.signUpSheetTitle,
                  style: context.textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: SymmetricPadding.verticalLow,
                child: Text(
                  LocaleKeys.signUpSheetDesctiption,
                  style: context.textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: OnlyPadding.onlyTopLow,
                child: CustomElevatedButton(
                  title: LocaleKeys.studentRegisterTitle,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: OnlyPadding.onlyTopLow,
                child: CustomElevatedButton(
                  title: LocaleKeys.teacherRegisterTitle,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: OnlyPadding.onlyTopLow,
                child: _sheetWrap(context),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Wrap _sheetWrap(BuildContext context) {
  return Wrap(
    spacing: 5,
    children: [
      Text(
        LocaleKeys.dontHaveAnAccount,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
      ),
      CustomInkWellText(
        text: LocaleKeys.signIn,
        onTab: () {},
      ),
    ],
  );
}

class _BaseSheetHeader extends StatelessWidget {
  const _BaseSheetHeader() : _gripHeight = 50;

  final double _gripHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _gripHeight,
      child: Stack(
        children: [
          Positioned(
            right: 10,
            top: 10,
            height: 24,
            child: IconButton(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
