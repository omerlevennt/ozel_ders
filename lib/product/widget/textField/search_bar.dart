import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/constants/locale_keys.dart';
import 'package:ozel_ders/product/utility/padding/symmetric_padding.dart';
import 'package:ozel_ders/product/widget/button/icon_button_custom.dart';
import 'package:ozel_ders/product/widget/card/card_search_delegate.dart';

class SearchBarField extends StatelessWidget {
  const SearchBarField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        showSearch<bool>(context: context, delegate: SearchDelegateCustom());
      },
      decoration: InputDecoration(
        prefixIcon: Image.asset('assets/icons/ic_search.png'),
        hintText: LocaleKeys.searchHintText,
      ),
    );
  }
}

class SearchDelegateCustom extends SearchDelegate<bool> {
  List<String> searchTerms = [
    'İngilzice',
    'Almanca',
    'Matematik',
    'Fen Bilgisi',
    'Felemenkçe',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButtonCustom(
        onPressed: () {
          query = '';
        },
        icon: Icons.clear,
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButtonCustom(
      onPressed: () {
        close(context, false);
        FocusScope.of(context).unfocus();
      },
      icon: Icons.arrow_back,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final matchQuery = <String>[];
    _lesson(matchQuery);
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        final result = matchQuery[index];
        return Padding(
          padding: PagePadding.horizontalNormal + PagePadding.verticalLow,
          child: InkWell(
            onTap: () {},
            child: CardSearchDelegate(text: result),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final matchQuery = <String>[];
    _lesson(matchQuery);
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        final result = matchQuery[index];
        return Padding(
          padding: PagePadding.horizontalNormal + PagePadding.verticalLow,
          child: InkWell(
            onTap: () {},
            child: CardSearchDelegate(text: result),
          ),
        );
      },
    );
  }

  void _lesson(List<String> matchQuery) {
    for (final lesson in searchTerms) {
      if (lesson.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(lesson);
      }
    }
  }
}
