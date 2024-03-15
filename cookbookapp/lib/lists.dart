import 'package:cookbookapp/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//class to represent each individual list item
class ListItem {
  String itemName;
  bool isSelected; //ensures that the individual item is checked off

  ListItem({required this.itemName, required this.isSelected});
}

//class to represent each grocery list the user makes
class GroceryList {
  String listName;
  List<ListItem> groceries;

  GroceryList({required this.listName, required this.groceries});
}

//this maintains the state of these lists and their items when navigating through the app
class UserList extends ChangeNotifier {
  List<GroceryList> groceryLists = [];

  void addList(GroceryList list) {
    groceryLists.add(list);
    notifyListeners();
  }
}

//page where user can view all their made lists
class ListScreen extends StatefulWidget {
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  void addList() {
    late GroceryList newList;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newName = "";
        return AlertDialog(
          title: const Text("Add a New List Name:"),
          content: TextField(
            onChanged: (value) {
              newName = value;
            },
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (newName.isNotEmpty) {
                    newList = GroceryList(listName: newName, groceries: []);
                    Provider.of<UserList>(context, listen: false)
                        .addList(newList);
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GroceryListScreen(newList)));
                  }
                });
              },
              child: const Text("Add New List"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final list = context.watch<UserList>().groceryLists;
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Your Lists'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GroceryListScreen(list[index])));
              },
              title: Text(list[index].listName),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    list.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addList,
        tooltip: 'Add New Item',
        child: const Icon(Icons.add),
      ),
    );
  }
}

//list where user can see the list selected
class GroceryListScreen extends StatefulWidget {
  final GroceryList currentList;

  const GroceryListScreen(this.currentList);

  @override
  State<GroceryListScreen> createState() => _GroceryListScreenState();
}

class _GroceryListScreenState extends State<GroceryListScreen> {
  void addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newItem = "";
        return AlertDialog(
          title: const Text("Add a New List Item:"),
          content: TextField(
            onChanged: (value) {
              newItem = value;
            },
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (newItem.isNotEmpty) {
                    widget.currentList.groceries
                        .add(ListItem(itemName: newItem, isSelected: false));
                  }
                  Navigator.pop(context);
                });
              },
              child: const Text("Add New Item"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.currentList.listName),
      ),
      body: ListView.builder(
        itemCount: widget.currentList.groceries.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Checkbox(
                value: widget.currentList.groceries[index].isSelected,
                onChanged: (newValue) {
                  setState(() {
                    widget.currentList.groceries[index].isSelected = newValue!;
                  });
                },
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    widget.currentList.groceries.removeAt(index);
                  });
                },
              ),
              title: Text(
                widget.currentList.groceries[index].itemName,
                style: TextStyle(
                  fontSize: 15,
                  decoration: widget.currentList.groceries[index].isSelected
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addTodo,
        tooltip: 'Add New Item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
