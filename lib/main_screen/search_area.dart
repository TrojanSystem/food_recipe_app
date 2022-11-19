import 'package:flutter/material.dart';

import 'custome_search.dart';

class SearchArea extends StatefulWidget {
  @override
  State<SearchArea> createState() => _SearchAreaState();
}

class _SearchAreaState extends State<SearchArea> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController searchWord = TextEditingController();
  final FocusNode searchWordNode = FocusNode();

  late String searched = '';

  @override
  void dispose() {
    searchWord.dispose();
    searchWordNode.dispose();
    super.dispose();
  }

  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      width: MediaQuery
          .of(context)
          .size
          .width * 0.9,
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: TextFormField(
            //    controller: searchedWord,
            validator: (value) {
              if (value == null) {
                return 'search can\'t be empty';
              } else {
                return null;
              }
            },
            onChanged: (value) {
              setState(() {
                searched = value;
              });
            },
            onSaved: (savedValue) {},
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {
                  // showSearch(
                  //     context: context,
                  //     // delegate to customize the search bar
                  //     delegate: CustomSearchDelegate()
                  // );
                },
                icon: const Icon(
                  Icons.search,
                ),
              ),
              hintText: 'Search...',
              filled: true,
              fillColor: Colors.grey[200],
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

