import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCzeLdzWtGDSL5nZr9nK6Wh81YUH9GZgnOsw&s";

    return Drawer(
      child: Container(
        color: Colors.deepPurple, // Set the color of the container
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: const Text('purushottam@gmail.com'),
                accountName: const Text('purushottam kumar'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,),
              title: Text('Home', style: TextStyle(color: Colors.white),),
            ),
              ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,),
              title: Text('Profile', style: TextStyle(color: Colors.white),),
            ),
              ListTile(
              leading: Icon(CupertinoIcons.mail,
              color: Colors.white,),
              title: Text('Email me', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
