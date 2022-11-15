import 'package:flutter/material.dart';

class SearchArea extends StatelessWidget {
  SearchArea({
    required this.searchedWord,
  });

  final TextEditingController searchedWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Form(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: TextFormField(
            controller: searchedWord,
            validator: (value) {
              if (value == null) {
                return 'search can\'t be empty';
              } else {
                return null;
              }
            },
            onSaved: (value) {
              searchedWord.text = value!;
            },
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
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
