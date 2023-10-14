import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/constants/locale_keys.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

class SearchBarField extends StatelessWidget {
  const SearchBarField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: ThemeColor.oxfordBlue,
      style: TextStyle(
        color: ThemeColor.oxfordBlue,
        fontSize: 16,
      ),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search_outlined),
        hintText: LocaleKeys.searchHintText,
      ),
    );
  }
}
