import 'package:dictionary/data/food_data_provider.dart';
import 'package:dictionary/food_details/filtered_food.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/recipe_data.dart';
import 'food_drawer.dart';
import 'bottom_food_list.dart';
import 'popular_recipes.dart';

class FoodMainScreen extends StatefulWidget {
const  FoodMainScreen({Key? key}) : super(key: key);

  @override
  State<FoodMainScreen> createState() => _FoodMainScreenState();
}

class _FoodMainScreenState extends State<FoodMainScreen> {
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

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    int columnCount = 3;
    bool isVisible = false;
    List<String> searchTerms = [];
    final foodList = Provider.of<FoodDataProvider>(context).foodListData;

    foodList.map((e) => searchTerms.add(e.displayName)).toList();

    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(searched.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.92,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   height: 30,
                        // ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Cook at home like a chief',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Form(
                            key: _formKey,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: TextFormField(
                                controller: searchWord,
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

                                    if (value.isEmpty) {
                                      FocusScope.of(context).unfocus();

                                      Provider.of<FoodDataProvider>(context,
                                              listen: false)
                                          .changer(!isVisible);
                                    } else {
                                      Provider.of<FoodDataProvider>(context,
                                              listen: false)
                                          .changer(isVisible);
                                    }
                                    // print( Provider.of<FoodDataProvider>(context,listen: false).isShowing);
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
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: PopularRecipes(popularFoodList: foodList),
                  ),
                  Expanded(
                    flex: 3,
                    child: BottomFoodList(
                        w: w, columnCount: columnCount, foodList: foodList),
                  ),
                ],
              ),
              Provider.of<FoodDataProvider>(context, listen: false).isShowing ==
                      true
                  ? Positioned(
                      top: 112,
                      left: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ListView.builder(
                          itemCount: matchQuery.length,
                          itemBuilder: (context, index) {
                            var result = matchQuery[index];

                            return result.isNotEmpty
                                ? ListTile(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (ctx) => FilterFood(
                                              filteringQuery: result,
                                              foodList: foodList,
                                              checkNumber: 1,
                                              identifier: 'search'),

                                        ),
                                      );

                                    },
                                    title: Text(
                                      result,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18,
                                      ),
                                    ),
                                  )
                                : const Center(
                                    child: Text('No Recipe By Value Entered!'),
                                  );
                          },
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
      drawer: FoodDrawer(dataToBeFilter: foodList),
    );
  }
}
