import 'package:flutter/material.dart';
class SearchArea extends StatelessWidget {
  const SearchArea({
    Key? key,
    required TextEditingController searchedWord,
  }) : _searchedWord = searchedWord, super(key: key);

  final TextEditingController _searchedWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30.0),
      width: MediaQuery.of(context).size.width * 0.75,
      child: Form(
        child:  Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: TextFormField(
            controller: _searchedWord,
            validator: (value) {
              if (value == null) {
                return 'search can\'t be empty';
              } else {
                return null;
              }
            },
            onSaved: (value) {
              _searchedWord.text = value!;
            },
            decoration: InputDecoration(
              hintText: 'Search a word..',
              filled: true,
              fillColor: Colors.white,
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