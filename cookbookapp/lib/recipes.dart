import 'package:cookbookapp/meal_model.dart';
import 'package:cookbookapp/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

//class meant to add to favorites list
class FavoriteList extends ChangeNotifier {
  List<MealRecipe> mealList = [];

  void addFav(MealRecipe recipe) {
    mealList.add(recipe);
    notifyListeners();
  }

  void removeRecipe(MealRecipe index) {
    mealList.remove(index);
    notifyListeners();
  }
}



class RecipeScreen extends StatefulWidget {
  const RecipeScreen({super.key});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

//screen that shows buttons to allow filtering
class _RecipeScreenState extends State<RecipeScreen> {
  List<MealRecipe> items = [];
  List<MealRecipe> _searchedItems = [];
  var style = ElevatedButton.styleFrom(fixedSize: const Size(300, 50));
  var space = const SizedBox(height: 30);

  @override
  void initState() {
    super.initState();
    setState(() {
      items = MealRecipe.callRecipes();
      _searchedItems = items;
    });
  }

  Future<void> filter(String searchText) async {
    List<MealRecipe> results = [];
    if (searchText == 'No Restrictions') {
      results = items;
    } else {
      results = items
          .where((element) => element.category.contains(searchText))
          .toList();
    }

    setState(() {
      _searchedItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        title: const Text('Recipes'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              space,
              Text(
                "Choose A Food Category:",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                style: style,
                onPressed: () async {
                  await filter('Vegetarian');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FilterScreen(_searchedItems)));
                },
                child: const Text('Vegetarian'),
              ),
              space,
              ElevatedButton(
                  style: style,
                  onPressed: () async {
                    await filter('Vegan');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FilterScreen(_searchedItems)));
                  },
                  child: const Text('Vegan')),
              space,
              ElevatedButton(
                style: style,
                onPressed: () async {
                  await filter('Pescatarian');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FilterScreen(_searchedItems)));
                },
                child: const Text('Pescatarian'),
              ),
              space,
              ElevatedButton(
                style: style,
                onPressed: () async {
                  await filter('Dairy Free');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FilterScreen(_searchedItems)));
                },
                child: const Text('Dairy Free'),
              ),
              space,
              ElevatedButton(
                style: style,
                onPressed: () async {
                  await filter('Gluten Free');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FilterScreen(_searchedItems)));
                },
                child: const Text('Gluten Free'),
              ),
              space,
              ElevatedButton(
                style: style,
                onPressed: () async {
                  await filter('No Restrictions');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FilterScreen(_searchedItems)));
                },
                child: const Text('No Restrictions'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//screen that shows filter results
class FilterScreen extends StatefulWidget {
  final List<MealRecipe> filtered;

  const FilterScreen(this.filtered);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Filtered Results'),
      ),
      body: Center(
        child: ListView.separated(
          padding: const EdgeInsets.all(10.0),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: widget.filtered.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              RecipeDetails(widget.filtered[index])));
                },
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.filtered[index].imgSrc),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Text(widget.filtered[index].name,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ));
          },
        ),
      ),
    );
  }
}



//screen for recipe details
class RecipeDetails extends StatefulWidget {
  final MealRecipe currentRecipe;
  RecipeDetails(this.currentRecipe);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  var subheading = GoogleFonts.roboto(
      color: Colors.green[600], fontSize: 25, fontWeight: FontWeight.w800);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.currentRecipe.name),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.currentRecipe.imgSrc),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(height: 10),
              Text(widget.currentRecipe.name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
              ListTile(
                  leading: const Icon(Icons.timer),
                  title: const Text('Duration'),
                  subtitle: Text(widget.currentRecipe.duration)),
              InkWell(
                onTap: () {

                  setState(() {
                    widget.currentRecipe.favorite = !widget.currentRecipe.favorite;
                  });

                  if (widget.currentRecipe.favorite == true) {
                    Provider.of<FavoriteList>(context, listen: false)
                        .addFav(widget.currentRecipe);
                  } else {
                    Provider.of<FavoriteList>(context, listen: false)
                        .removeRecipe(widget.currentRecipe);
                  }
                },
                child: Card(
                  child: ListTile(
                    leading: widget.currentRecipe.favorite
                        ? Icon(Icons.favorite, color: Colors.red)
                        : Icon(Icons.favorite_border, color: Colors.red,),
                    title: const Text('Favorite This Recipe!'),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Ingredients:',
                style: subheading,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.currentRecipe.ingredients.length,
                itemBuilder: ((context, index) {
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      title: Text(
                        widget.currentRecipe.ingredients[index],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 40),
              Text(
                'Directions:',
                style: subheading,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.green[200]!,
                    borderRadius: const BorderRadius.all(Radius.circular(40))),
                child: Text(widget.currentRecipe.directions,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 15,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
