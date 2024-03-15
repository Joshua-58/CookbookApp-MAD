import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//side menu for application
class SideMenu extends StatelessWidget {
  const SideMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(
              'Side Menu',
              style: GoogleFonts.roboto(
                  color: Colors.green[400],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading:Icon(Icons.home),
            title: const Text('Home'),
            onTap: (){
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading:Icon(Icons.notes),
            title: const Text('Recipes'),
            onTap: (){},
          ),
          ListTile(
            leading:Icon(Icons.shopping_cart),
            title: const Text('Your Lists'),
            onTap: (){
              Navigator.pushNamed(context, '/lists');
            },
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
