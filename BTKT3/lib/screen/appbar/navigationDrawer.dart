import 'package:btgk_android/screen/ITEM/itemscreen.dart';
import 'package:btgk_android/screen/login/loginscreen.dart';
import 'package:btgk_android/screen/language/languageScreen.dart';
import 'package:btgk_android/screen/profile/profilescreen.dart';
import 'package:flutter/material.dart';

class navigationDrawer extends StatefulWidget {
  const navigationDrawer({Key? key}) : super(key: key);

  @override
  State<navigationDrawer> createState() => _navigationDrawerState();
}

class _navigationDrawerState extends State<navigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Nguyễn Trần Tiến"),
            accountEmail: Text("Nguyentrantien752@gmail.com"),
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage('assets/avatar.jpeg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Math"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return languageScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Add Fish"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ItemScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text("Paypal"),
            onTap: () {},
          ),
          const Divider(
            height: 40,
            thickness: 0.5,
            indent: 40,
            endIndent: 40,
            color: Color.fromARGB(255, 66, 65, 65),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings Account"),
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text("Log Out"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
