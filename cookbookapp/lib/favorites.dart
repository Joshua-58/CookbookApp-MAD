import 'package:cookbookapp/menu.dart';
import 'package:cookbookapp/recipes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

//screen dedicated to showing the recipes the user favorite
class FavoriteScreen extends StatefulWidget{
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();

  const FavoriteScreen({super.key});
}

class _FavoriteScreenState extends State<FavoriteScreen>{
  @override
  Widget build(BuildContext context) {
    final favList = context.watch<FavoriteList>().mealList;
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Your Lists'),
      ),
      body: Center(
        child: ListView.separated(
          itemCount: favList.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context,index){
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RecipeDetails(favList[index])));
              },
              child: Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(favList[index].imgSrc),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Text(favList[index].name,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
              )
            );
          },
        ),
      ),
    );
  }
}
