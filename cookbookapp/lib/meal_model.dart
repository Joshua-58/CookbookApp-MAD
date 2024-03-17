//create a boolean variable for each recipe to indicate favorite
class MealRecipe {
  bool favorite;
  String imgSrc;
  String name;
  List<String> category;
  String duration;
  List<String> ingredients;
  String directions;

  MealRecipe(
      {required this.favorite,
      required this.imgSrc,
      required this.name,
      required this.category,
      required this.duration,
      required this.ingredients,
      required this.directions});

  static List<MealRecipe> callRecipes() {
    final List<MealRecipe> recipeList = [];

    MealRecipe recipe1 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/brocsoup.png',
        name: 'Broccoli Cheddar Soup',
        category: ['Vegetarian'],
        duration: '35 Minutes',
        ingredients: [
          '3 Cups of Broccoli Florets',
          '1 Medium Onion Chopped',
          '3 Garlic Cloves, Chopped',
          '4 Tablespoons Unsalted Butter',
          '1/4 Cup of All-Purpose Flour',
          '2 Cups Whole Milk',
          'Vegetable Broth',
          '1 Large Carrot, Finely Chopped',
          '1/2 Teaspoon Dijon Mustard',
          '8 Ounces Shredded Cheddar Cheese',
          '1/2 Teaspoon Salt and Pepper'
        ],
        directions:
            '1. Melt the butter in a large pot or Dutch oven over medium heat. Add the onion, salt, and several grinds of pepper and cook, stirring, for 5 minutes, or until softened. Stir in the garlic and cook for another minute, then sprinkle in the flour and whisk continuously for 1 to 2 minutes, or until the flour turns golden. Slowly pour in the milk, whisking continuously.\n\n2.Add the broth, broccoli, carrot, and mustard and stir to combine. Simmer for 15 to 20 minutes, or until the broccoli is tender.\n\n3.Gradually add the cheese, stirring after each addition, until all the cheese is melted and the soup is creamy. Season to taste and serve with croutons, if desired.');

    recipeList.add(recipe1);

    MealRecipe recipe2 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/veggiechilli.png',
        name: 'Vegetarian Chilli',
        category: ['Vegetarian', 'Vegan', 'Dairy Free'],
        duration: '45 Minutes',
        ingredients: [
          '1/2 Tablespoon Olive Oil',
          '3 Cloves of Garlic, Minced',
          '1 Yellow Onion, Chopped',
          '1 Large Carrot, Diced',
          '1 Red Bell Pepper',
          '4 Ounces of Canned Mild Green Chillis',
          '15 Ounces of Black and Kidney Beans',
          '1 Medium to Large Sweet Potato',
          '2 1/2 Tablespoons of Mild Chili Powder',
          'Cumin, Oregano, Garlic Powder, Paprika, Cayenne Powder',
          '28 Ounces of Tomatos',
          'Salt and Pepper',
          '1 Cup of Frozen Corn'
        ],
        directions:
            '1. Place oil in a large pot and place over medium high heat. Add in garlic, onion, diced carrot, red bell pepper, cubed sweet potatoes and green chiles; saute for 5-7 minutes, stirring frequently.\n\n2. Next add in chili powder, cumin, oregano, garlic powder, paprika, cayenne pepper, salt and black pepper; stir for about 30 seconds.\n\n3. Finally add in crushed tomatoes, broth/water, black beans, kidney beans and corn. Bring to a boil, then reduce heat and simmer for 30-45 minutes or until chili thickens and flavors come together. Taste and adjust seasonings and salt as necessary.\n\n4. Garnish with anything you would like. Makes 6 servings, about 1 1/2 cups each.');

    recipeList.add(recipe2);

    MealRecipe recipe3 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/enchiladas.png',
        name: 'Black Bean Enchiladas',
        category: ['Vegetarian'],
        duration: '45 Minutes',
        ingredients: [
          '2 Cups of Enchilada Sauce',
          '2 Tablespoons Olive Oil',
          '1 Cup of Chopped Onions',
          '1 Red Bell Pepper, Chopped',
          '1 Bunch of Broccoli or Cauliflower',
          '1/4 Teaspoon Cumin',
          '1/4 Teaspoon Cinnamon',
          '5-6 Ounces of Baby Spinach',
          '1 Can of Black Beans',
          '1 Cup of Shredded Monterray Cheese',
          '1/2 Teaspoon Salt',
          'Pepper',
          '8 Whole Wheat Tortillas',
          'Cilantro for Garnish',
        ],
        directions:
            '1. Preheat oven to 400 degrees Fahrenheit with one rack in the middle of the oven and one in the upper third. Lightly grease a 9 by 13-inch pan with olive oil or cooking spray.\n\n2. In a large skillet over medium heat, warm the olive oil until simmering. Add the onions and a pinch of salt. Cook, stirring often, until the onions are tender and translucent, about 5 to 7 minutes. Add the broccoli and bell pepper, stir, and reduce heat to medium-low. Cover the skillet and cook, stirring occasionally, for about 8 to 9 minutes, or until the broccoli is brighter green and just starting to turn golden on the edges.\n\n3. Add the cumin and cinnamon to the skillet and cook until fragrant, about 30 seconds. Add the spinach, a few handfuls at a time, stirring until it has reduced in size. Repeat with the remaining spinach and cook until all of the spinach has wilted.\n\n4. Transfer the contents of the pan to a medium mixing bowl. Add the drained beans, ¼ cup cheese and a drizzle of enchilada sauce (about 2 tablespoons). Season with ½ teaspoon salt and some freshly ground black pepper, to taste.\n\n5. Assemble the enchiladas: Pour ¼ cup enchilada sauce into your prepared pan and tilt it from side to side until the bottom of the pan is evenly coated. To assemble your first enchilada, spread ½ cup filling mixture down the middle of a tortilla, then snugly wrap the left side over and then the right, to make a wrap. Place it seam-side down against the edge of your pan. Repeat with remaining tortillas and filling.\n\n6. Drizzle the remaining enchilada sauce evenly over the enchiladas, leaving the tips of the enchiladas bare. Sprinkle the remaining shredded cheese evenly over the enchiladas.\n\n7. Bake, uncovered, on the middle rack for 20 minutes. If the cheese on top isn’t golden enough for your liking, carefully transfer the enchiladas to the upper rack of the oven and bake for an additional 3 to 6 minutes, until sufficiently golden and bubbly\n\n8. Remove from oven and let the enchiladas rest for 10 minutes (they’re super hot!). Before serving, sprinkle chopped cilantro down the center of the enchiladas. Serve immediately. Leftovers will keep well for up to 4 days in the refrigerator, covered.');

    recipeList.add(recipe3);

    MealRecipe recipe4 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/veggiefajitas.png',
        name: 'Vegetable Fajitas',
        category: ['Vegetarian', 'Vegan', 'Dairy Free'],
        duration: '22 Minutes',
        ingredients: [
          '1/2 TableSpoon of Olive Oil',
          '1 Large Yellow Onion, Thinly Sliced',
          '2 Medium Bell Peppers, Thinly Sliced',
          '1 Clove of Garlic, Minced',
          '2 Large Portabella Mushrooms',
          '1/2 Teaspoon of Smoked Paprika',
          '1/2 Teaspoon of Onion Powder',
          '1/2 Teaspoon of Black Pepper',
          '1/2 Teaspoon of Cumin',
          'Salt',
          '1 Lime',
          'Serve with Choice of Tortillas, Cheese, Avocado, etc.'
        ],
        directions:
            '1. Preheat a 12 inch cast iron skillet over medium-high heat. Add in oil, onions, and peppers. Saute for 4-5 minutes or until onions begin to soften and caramelize.\n\n2. Add in garlic, portobello mushrooms, and spices. Saute for 4-5 minutes longer until mushrooms soften and the liquid that was released into the pan mostly renders off (it will not all render off and that is okay!)\n\n3. Turn off the heat and stir in the zest and juice of one lime.\n\n4. Use a slotted spoon and serve on top of your favorite tortillas and top as desired.');

    recipeList.add(recipe4);

    MealRecipe recipe5 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/veganpizza.png',
        name: 'Vegan Pizza',
        category: ['Vegetarian', 'Vegan', 'Gluten Free', 'Dairy Free'],
        duration: '40 Minutes',
        ingredients: [
          '1/2 Trader Joe Garlic-Herb Pizza Crust',
          '1/2 Each of Orange, Yellow, and Green Peppers',
          '1/3 Cup Read Onion',
          '1 Cup Button Mushrooms',
          '1/2 Teaspoons Each of Dried Basil, Oregano, and Garlic Powder',
          'Salt'
              '15 Ounce Can of Tomato Sauce',
          'Red Pepper Flakes'
        ],
        directions:
            '1. Preheat oven to 425 degrees F (218 C) and position a rack in the middle of the oven.\n\n2. Bring large skillet to medium heat. Once hot, add 1 Tbsp olive oil (amount as original recipe is written // adjust if altering batch size), onion and peppers. Season with salt, herbs and stir. Cook until soft and slightly charred – 10-15 minutes, adding the mushrooms in the last few minutes. Set aside.\n\n3. Prepare sauce by adding tomato sauce to a mixing bowl and adding seasonings and salt to taste. Adjust seasonings as needed. Set aside. Note: If using tomato paste, add water to thin until desired consistency is reached.\n\n4. Prepare vegan parmesan if you haven’t already by blitzing raw cashews, sea salt, nutritional yeast and garlic powder in a food processor until a fine meal is reached. Transfer to jar and refrigerate to keep fresh.\n\n5. Roll out dough onto a floured surface and transfer to a parchment-lined round baking sheet. You’re going to add the pizza WITH the parchment directly to the oven to properly crisp the crust, so any round object will do as it’s not actually going into the oven (I use a wood board).\n\n6. Top with desired amount of tomato sauce (you’ll have leftovers, which you can store in a jar for later use), a sprinkle of parmesan cheese and the sautéed veggies.\n\n7. Use the baking sheet to gently slide the pizza (WITH the parchment underneath) directly onto the oven rack. The parchment will help prevent it from falling through.\n\n8. Bake for 17-20 minutes or until crisp and golden brown.\n\n9. Serve with remaining parmesan cheese, dried oregano and red pepper flake. Leftovers keep well, no need to reheat!');

    recipeList.add(recipe5);

    MealRecipe recipe6 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/veganrice.png',
        name: 'Vegan Fried Rice',
        category: ['Vegan', 'Vegetarian', 'Dairy Free'],
        duration: '1 Hour',
        ingredients: [
          '1 Cup of Extra-Firm Tofu',
          '1 Cup Long or Short Grain Brown Rice',
          '4 Garlic Cloves',
          '1 Cup of Chopped Green Onions',
          '1/2 Cup Peas',
          '1/2 Cup Carrots',
          '3 Tablespoons of Tamari or Soy Sauce',
          '1 Tablespoon Peanut Butter',
          '1-2 Teaspoons of Chilli Garlic Sauce',
          '1 Teaspoon of Sesame Oil'
        ],
        directions:
            '1. Preheat oven to 400 degrees F (204 C) and line a baking sheet with parchment paper (or lightly grease with non-stick spray).\n\n2. In the meantime wrap tofu in a clean, absorbent towel and set something heavy on top (such as a cast iron skillet) to press out the liquid.\n\n3. Once the oven is preheated, dice tofu into 1/4-inch cubes and arrange on baking sheet. Bake for 26-30 minutes. You’re looking for golden brown edges and a texture that’s firm to the touch. The longer it bakes, the firmer and crispier it will become, so if you’re looking for softer tofu remove from the oven around the 26-28 minute mark. I prefer crispy tofu, so I bake mine the full 30 minutes. Set aside.\n\n4. While the tofu bakes prepare your rice by bringing 12 cups of water to a boil in a large pot. Once boiling, add rinsed rice and stir. Boil on high uncovered for 30 minutes, then strain for 10 seconds and return to pot removed from the heat. Cover with a lid and let steam for 10 minutes*.\n\n5. While rice and tofu are cooking, prepare sauce by adding all ingredients to a medium-size mixing bowl and whisking to combine. Taste and adjust flavor as needed, adding more tamari or soy sauce for saltiness, peanut butter for creaminess, brown sugar for sweetness, or chili garlic sauce for heat.\n\n6. Once the tofu is done baking, add directly to the sauce and marinate for 5 minutes, stirring occasionally.\n\n7. Heat a large metal or cast iron skillet over medium heat. Once hot, use a slotted spoon to scoop the tofu into the pan leaving most of the sauce behind. Cook for 3-4 minutes, stirring occasionally, until deep golden brown on all sides (see photo). Lower heat if browning too quickly. Remove from pan and set aside.\n\n8. To the still hot pan add garlic, green onion, peas and carrots. Sauté for 3-4 minutes, stirring occasionally, and season with 1 Tbsp (15 ml) tamari or soy sauce (amount as original recipe is written // adjust if altering batch size).\n\n9. Add cooked rice, tofu, and remaining sauce and stir. Cook over medium-high heat for 3-4 minutes, stirring frequently.\n\n10. Serve immediately with extra chili garlic sauce or sriracha for heat (optional). Crushed salted, roasted peanuts or cashews make a lovely additional garnish. Leftovers keep well in the refrigerator for 3-4 days, though best when fresh. Reheat in a skillet over medium heat or in the microwave.');

    recipeList.add(recipe6);

    MealRecipe recipe7 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/paella.png',
        name: 'Seafood Paella',
        category: ['Pescatarian', 'Dairy Free'],
        duration: '1 Hour',
        ingredients: [
          '4 Lobster Tails',
          'Water',
          '3 Tablespoons of Extra Virgin Olive Oil',
          '1 Large Yellow Onion, Chopped',
          '2 Cups of Spanish Rice',
          '4 Cloves of Garlic, Minced',
          '2 Large Pinches of Spanish Saffron Threads',
          '1 Teaspoon Cayenne Pepper',
          '1/2 Teaspoon Chile Flakes',
          'Salt',
          '2 Large Roma Tomatoes',
          '6 Ounces French Green Beans',
          '1 lb of Large Shrimp or Prawns'
              'Parsely'
        ],
        directions:
            '1. In a large pot, bring 3 cups of water to a rolling boil. Add the lobster tails and let boil very briefly (1-2 minutes) until pink. Turn the heat off. Remove the lobster tails with a pair of tongs. Do not discard the lobster cooking water. When the lobster is cool enough to handle, remove the shell and cut into large chunks.\n\n2. In a large deep pan or cast iron skillet, heat 3 tablespoon olive oil. Turn the heat to medium-high and add the chopped onions. Saute the onions for 2 minutes then add the rice, and cook for 3 more minutes, stirring regularly. Now add the chopped garlic and the lobster cooking water. Stir in the saffron and its soaking liquid, paprika, cayenne pepper, aleppo pepper, and salt. Stir in the chopped tomatoes and green beans. Bring to a boil and let the liquid slightly reduce, then cover (with lid or tightly with foil) and cook on low heat for 20 minutes.\n\n3. Uncover and spread the shrimp over the rice, pushing it into the rice slightly. Add a little water if needed. Cover and cook for another 10 minutes or until the shrimp turns pink. Finally, add the cooked lobster chunks. When the lobster is warmed through, turn heat off. Garnish with parsley.\n\n4. Serve the paella hot with your favorite white wine.');

    recipeList.add(recipe7);

    MealRecipe recipe8 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/shrimpscampi.png',
        name: 'Shrimp Scampi',
        category: ['Pescatarian'],
        duration: '10 Minutes',
        ingredients: [
          '2 Tablespoons Olive Oil',
          '4 Tablespoons Butter',
          '4-5 Garlic Cloves, Minced',
          '1 lb Large Shrimps (with or wihtout Shells)',
          'Salt and Black Pepper',
          '1/4 Cup Dry White Wine or Broth',
          '1/2 Teaspoon Crushed Red Pepper Flakes',
          '2 Tablespoons of Lemon Juice',
          'Parseley'
        ],
        directions:
            '1. Heat olive oil and 2 tablespoons of butter in a large pan or skillet. Add garlic and sauté until fragrant (about 30 seconds - 1 minute). Then add the shrimp, season with salt and pepper to taste and sauté for 1-2 minutes on one side (until just beginning to turn pink), then flip.\n\n2. Pour in wine (or broth), add red pepper flakes (if using). Bring to a simmer for 1-2 minutes or until wine reduces by about half and the shrimp is cooked through (do not over cook your shrimp).\n\n3. Stir in the remaining butter, lemon juice and parsley and take off heat immediately.\n\n4. Serve over rice, pasta, garlic bread or steamed vegetables (cauliflower, broccoli, zucchini noodles).');

    recipeList.add(recipe8);

    MealRecipe recipe9 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/lobsterroll.png',
        name: 'Lobster Roll',
        category: ['Pescatarian'],
        duration: '19 Minutes',
        ingredients: [
          '1 Pound Lobster Meat',
          '1/4 Cup Minced Celery',
          '1/4 Cup Mayonnaise',
          '1 Tablespoon Chives',
          '1 Tablespoon Lemon Juice',
          '1 Teaspoon Lemon Zest',
          '1/4 Teaspoon Kosher Salt',
          '4 Brioche Rolls',
          'Black Pepper',
          '4 Tablespoons Butter'
        ],
        directions:
            '1. Rinse the lobster meat and pick through for any loose shells. Drain throughly so the mayo sauce does not get watery. Chop or tear into large chunks and set aside.\n\n2. In a large bowl, mix the celery, mayonnaise, chives, lemon juice, lemon zest, kosher salt and ground black pepper. Taste for seasoning.\n\n3. In a large skillet over medium heat, melt 2 tablespoons of the butter and add the lobster meat. Cook, stirring for 2 minutes until warmed through and buttery all over. Use a slotted spoon to dish the lobster meat into the mayonnaise mixture and toss to coat. Discard butter and juice released from the lobster and wipe out the skillet. Melt the remaining butter in the skillet over medium heat; toast the buns on the cut sides about 2 minutes each side until golden and toasty.\n\n4. Load each bun equally with lobster meat and garnish with more chives if desired. Serve with potato chips.');

    recipeList.add(recipe9);

    MealRecipe recipe10 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/chickenparm.png',
        name: 'Chicken Parmesan',
        category: [],
        duration: '30 Minutes',
        ingredients: [
          '4 Skinless Boneless Chicken Breasts',
          'Salt and Pepper',
          '2 Large Eggs',
          '1 Cup Panko Bread Crumbs',
          '3/4 Cup Grate Parmesan Cheese',
          '1/2 Cup Prepared Tomato Sauce',
          '1/4 Cup Mozzarella Cheese',
          '1/4 Cup Chopped Fresh Basil',
          '1/2 Cup Shredded Provalone Cheese',
          '2 Teaspoons Olive Oil'
        ],
        directions:
            '1. Preheat an oven to 450 degrees F (230 degrees C).\n\n2. Place chicken breasts between two sheets of heavy plastic (resealable freezer bags work well) on a solid, level surface. Firmly pound chicken with the smooth side of a meat mallet to a thickness of 1/2-inch.\n\n3. Season chicken thoroughly with salt and pepper. Using a sifter or strainer; sprinkle flour over chicken breasts, evenly coating both sides\n\n4. Beat eggs in a shallow bowl and set aside.\n\n5. Mix bread crumbs and 1/2 cup Parmesan cheese in a separate bowl, set aside.\n\n6. Dip a flour-coated chicken breast in beaten eggs. Transfer breast to the bread crumb mixture, pressing crumbs into both sides. Repeat for each breast. Let chicken rest for 10 to 15 minutes.\n\n7.Heat 1/2 inch olive oil in a large skillet on medium-high heat until it begins to shimmer. Cook chicken in the hot oil until golden, about 2 minutes per side. The chicken will finish cooking in the oven. ');

    recipeList.add(recipe10);

    MealRecipe recipe11 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/beefstew.png',
        name: 'Beef Stew',
        category: [],
        duration: '2 Hours 30 Minutes',
        ingredients: [
          '1/4 Cup of All Purpose Flour',
          '1/4 Teaspoon Pepper',
          '1 Pound Beef Stewing Meat',
          '5 Teaspoons Vegetable Oil',
          '2 TableSpoons Red Wine Vineger',
          '1 Cup Red Wine',
          '3 1/2 Cups of Beef Broth',
          '2 Bay Leaves',
          '1 Medium Onion',
          '5 Medium Carrots',
          '2 Large Baking Potatoes',
          'Salt'
        ],
        directions:
            '1. Combine the flour and pepper in a bowl, add the beef and toss to coat well. Heat 3 teaspoons of the oil in a large pot. Add the beef a few pieces at a time; do not overcrowd. Cook, turning the pieces until beef is browned on all sides, about 5 minutes per batch; add more oil as needed between batches.\n\n2. Remove the beef from the pot and add the vinegar and wine. Cook over medium-high heat, scraping the pan with a wooden spoon to loosen any browned bits. Add the beef, beef broth and bay leaves. Bring to a boil, then reduce to a slow simmer.\n\n3. Cover and cook, skimming broth from time to time, until the beef is tender, about 1½ hours. Add the onions and carrots and simmer, covered, for 10 minutes. Add the potatoes and simmer until vegetables are tender, about 30 minutes more. Add broth or water if the stew is dry. Season with salt and pepper to taste. Ladle among 4 bowls and serve.\n\n');

    recipeList.add(recipe11);

    MealRecipe recipe12 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/burrito.png',
        name: 'Steak and Bean Burritos',
        category: ['Dairy Free'],
        duration: '1 Hour 5 Minutes',
        ingredients: [
          '8 ounce Sirloin Steak',
          '1 Teaspoon Cumin',
          '1 Teaspoon Dried Oregano',
          '1 Teaspoon Ground Ancho Pepper',
          'Salt',
          '4 Teaspoon Vegetable Oil',
          '3/4 Cup Onion',
          '1 Teaspoon Cumin Seeds',
          '1 Clove Garlic Minced',
          '2 Cups Black Beans',
          '14 Ounce Can of fire-roasted Green Chillies',
          '1 Lime',
          'Tortillas'
        ],
        directions:
            '1. Pat steak dry; rub with spice mix. Let stand 30 minutes. In a skillet heat 2 tsp. vegetable oil over medium-high heat. Add steak. Cook 5 minutes or until browned. Turn; cook 3 to 5 minutes more or until steak is medium rare (145°F). Remove; let rest. Add onion and a pinch salt to hot skillet. Reduce heat to medium; cook and stir 7 minutes or until golden brown and softened.\n\n2. Meanwhile, heat a small saucepan over medium-high. Add cumin seeds; cook and stir 1 minute or until fragrant. Add 2 tsp. vegetable oil and the garlic. Reduce heat to medium; cook 1 minute. Stir in beans and ½ cup of their cooking liquid; heat through. Fill tortillas with sliced steak, onion, beans, and desired toppings.');

    recipeList.add(recipe12);

    MealRecipe recipe13 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/stuffedpeppers.png',
        name: 'Classic Stuffed Peppers',
        category: ['Gluten Free'],
        duration: '40 Minutes',
        ingredients: [
          '4 Large Green Bell Peppers',
          '15 Ounce Can of Tomato Sauce',
          '1/2 Pound Ground Beef or Turkey',
          '1 Cup Cooked Brown Rice',
          'Salt',
          'Pepper',
          '1 Teaspoon of Garlic Powder'
        ],
        directions:
            '1. Cut the tops off the peppers and remove the seeds. Place the peppers in a large saucepan and cover with water. Bring to a simmer and cook 3 minutes, just until the peppers are slightly soft. Drain, rinse with cool water and set aside on paper towels to drain.\n\n2. In a skillet, heat the ground beef and onion and cook until no pink remains. Drain.\n\n3. Add the salt, pepper, rice, garlic powder and half of the tomato sauce.\n\n4. Stir well and spoon into the peppers.\n\n5. Top with the other half of the tomato sauce.\n\n6. Bake in an ungreased dish at 350 for 25-30 minutes. Serve warm.');
    recipeList.add(recipe13);

    MealRecipe recipe14 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/sphagetti.png',
        name: 'Sphaghetti Bolognese',
        category: ['Dairy Free'],
        duration: '45 Minutes',
        ingredients: [
          '2 Tablespoons Vegetable Oil',
          '1 Large Onion, Chopped',
          '1 Pound of Ground Beef',
          '28 Ounce Can of Diced Tomatos',
          '2 Tablespoons of Tomato Paste',
          '3 Cloves Garlic Minced',
          '1 Teaspoon Dried Oregano',
          '1 Sprig of Thyme',
          'Black Pepper and Salt',
          '1/2 Cup Red Wine',
          '1 Cup Chicken Stock',
          '1/2 Cup Fresh Basil',
          '1 Pound of Sphagetti'
        ],
        directions:
            '1. Heat olive oil in a Dutch oven (or any other heavy bottom pot) in medium heat. Add onion. Cook until wilted, 7-9 minutes.\n\n2. Stir in the tomatoes and tomato paste. Cook, stirring frequently for 5 minutes.\n\n3. Add in the ground beef. Using a wooden spoon break it into smaller chunks. Cook, stirring frequently, until it is browned, 7-8 minutes.\n\n4. Add the garlic, dried oregano, bundle thyme, salt, pepper, bay leaf, red wine, and chicken stock. Give everything a stir. Bring it to a simmer.\n\n5. Reduce the heat to medium-low, put the lid on, and let it to cook for 20-25 minutes, making sure to stir occasionally.\n\n6. Meanwhile, bring a large pot of salted water to boil and cook the spaghetti according to the instructions on its package.\n\n7. Once the spaghetti is ready, drain it in a colander.\n\n8. Discard the thyme bundle and the bay leaf from the Bolognese sauce.\n\n9. Add drained pasta into the sauce. Stir it all together making sure that the pasta is generously coated with the sauce.');

    recipeList.add(recipe14);

    MealRecipe recipe15 = MealRecipe(
        favorite: false,
        imgSrc: 'assets/images/marryme.png',
        name: 'Marry Me Chicken',
        category: ['Gluten Free'],
        duration: '35 Minutes',
        ingredients: [
          '1/4 Cup of Sundried Tomatoes in Oil',
          '2 8 Ounce Boneless, Skinless Chicken Breasts',
          'Salt and Pepper',
          '1/4 Cup of Gluten Free Flour Mix',
          '1 1/2 Tablespoons of Olive Oil',
          '1 Small Shallot',
          '2 Garlic Cloves',
          '1 Teaspoon of Tomato Paste',
          '4 Cups of Baby Spinach',
          '1 1/2 Cups of Cream Cheese',
          '3/4 Cup Chicken Broth',
          '3 Tablespoons of Half and Half',
          '1/4 Tablespoon of Dried Oregano',
        ],
        directions:
            '1. Begin by pounding the halved chicken breasts to an even thickness (about 1/2-inch thick). Season them with salt and black pepper. Dredge each chicken piece in flour, shaking off any excess.\n\n2. Heat 1 tablespoon of olive oil (or use from the sun dried tomatoes) in a large skillet over medium-high heat. Add the chicken and cook for about 4-5 minutes per side or until the chicken is cooked through and has a golden-brown crust. Remove the chicken from the skillet and set it aside.\n\n3. In the same skillet, add the remaining 1/2 tablespoon of olive oil. Add the minced shallot and garlic and sauté for about 1-2 minutes until they become fragrant and translucent.\n\n4. Stir in the tomato paste and cook for another 1-2 minutes.\n\n5. Add the chopped sundried tomatoes and baby spinach to the skillet. Cook until the spinach wilts.\n\n6. Reduce the heat to low, and then add the cream cheese, chicken broth, half-and-half, dried oregano, and red pepper flakes. Stir until the cream cheese is fully melted and the sauce is well combined.\n\n7. Return the cooked chicken to the skillet and let it simmer in the sauce for a few minutes until heated through.\n\n8. Sprinkle with grated Parmesan cheese and serve.');

    recipeList.add(recipe15);
    // MealRecipe recipe16 = MealRecipe(
    //     imgSrc: imgSrc,
    //     name: name,
    //     category: category,
    //     duration: duration,
    //     ingredients: ingredients,
    //     directions: directions);

    return recipeList;
  }
}
