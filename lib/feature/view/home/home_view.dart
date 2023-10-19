import 'package:flutter/material.dart';
import 'package:ozel_ders/feature/model/product_model.dart';
import 'package:ozel_ders/product/extension/context_extension.dart';
import 'package:ozel_ders/product/utility/constants/constants.dart';
import 'package:ozel_ders/product/utility/constants/image_constants.dart';
import 'package:ozel_ders/product/utility/constants/locale_keys.dart';
import 'package:ozel_ders/product/utility/padding/only_padding.dart';
import 'package:ozel_ders/product/utility/padding/symmetric_padding.dart';
import 'package:ozel_ders/product/utility/size/widget_custom_size.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';
import 'package:ozel_ders/product/widget/appBar/custom_app_bar.dart';
import 'package:ozel_ders/product/widget/avatar/home_circle_avatar.dart';
import 'package:ozel_ders/product/widget/button/favorite_button.dart';
import 'package:ozel_ders/product/widget/divider/custom_divider.dart';
import 'package:ozel_ders/product/widget/textField/search_bar.dart';

part 'home_items.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final items = ProductModel.productModels;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeViewAppBar(),
      body: Padding(
        padding: SymmetricPadding.horizontalNormal,
        child: Column(
          children: [
            const Padding(
              padding: SymmetricPadding.verticalNormal,
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
                    child: Stack(
                      children: [
                        Card(
                          margin: EdgeInsets.zero,
                          elevation: WidgetSizes.zero,
                          color: const Color.fromRGBO(243, 243, 243, 1),
                          child: Padding(
                            padding: SymmetricPadding.horizontalLow,
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const HomeCircleAvatar(
                                      image: Constants.randomUserUrl,
                                    ),
                                    Padding(
                                      padding: OnlyPadding.onlyTopLow,
                                      child: Text(
                                        items[index].name,
                                        style: context.textTheme.titleLarge
                                            ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: SymmetricPadding.verticalNormal +
                                      SymmetricPadding.horizontalLow,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.55,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              '${items[index].rank}',
                                              style:
                                                  context.textTheme.titleMedium,
                                            ),
                                            Text(
                                              '${items[index].returnTime}',
                                              style:
                                                  context.textTheme.titleMedium,
                                            ),
                                            Text(
                                              '${items[index].commit}',
                                              style:
                                                  context.textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        'En iyi olduğu branşlar: ${items[index].lessonName}',
                                        style: context.textTheme.titleMedium,
                                      ),
                                      SizedBox(
                                        width: context.width * 0.6,
                                        child: Text(
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          items[index].description,
                                          style: context.textTheme.titleSmall,
                                        ),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              ' ${items[index].experience} Yıl',
                                              style:
                                                  context.textTheme.titleMedium,
                                            ),
                                            Text(
                                              items[index].location,
                                              style:
                                                  context.textTheme.titleMedium,
                                            ),
                                            Text(
                                              '${items[index].price} ₺ / Saat',
                                              style:
                                                  context.textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          right: 8,
                          top: 8,
                          child: FavoriteButton(),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const CustomDivider();
                },
                itemCount: ProductModel.productModels.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
