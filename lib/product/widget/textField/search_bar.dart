import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/constants/locale_keys.dart';

class SearchBarField extends StatelessWidget {
  const SearchBarField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search_outlined),
        hintText: LocaleKeys.searchHintText,
      ),
    );
  }
}
