import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.account_box_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      title: const Text("H O M E"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      title: const Text("P R O F I L E"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/profile_page');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      title: const Text("A B O U T"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/about_page');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: const Text("L O G O U T"),
              onTap: () {
                Navigator.pop(context);
                logout();
              },
            ),
          ),
        ],
      ),
    );
  }
}
