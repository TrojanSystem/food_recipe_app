import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ApiIntegration extends StatelessWidget {
  ApiIntegration({Key? key}) : super(key: key);

  data() async {
    var response = await http.get(
        Uri.parse(
            'https://yummly2.p.rapidapi.com/feeds/list'),
        headers: {
          'X-RapidAPI-Key':
              '2c114bf2c8msh78581fd98d4a51ep107ca2jsnbfb22209ea79',
          'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
        });

    var data = jsonDecode(response.body);
    print(data['feed'][0]['content']['details']['rating']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: IconButton(
        onPressed: data,
        icon: Icon(Icons.data_array_sharp),
      )),
    );
  }
}
