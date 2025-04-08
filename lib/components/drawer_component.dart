import 'package:flutter/material.dart';
import 'package:garments_niyog/base/base.dart';
import 'package:garments_niyog/helpers/global_helper.dart';
import 'package:garments_niyog/helpers/route.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // Profile image
                ),
                SizedBox(height: 10),
                Text(
                  'John Doe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'john.doe@example.com',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(), // Adds a horizontal line
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Global.confirmDialog(onConfirmed: () {
                Base.loginController.logout();
                back();
              });
            },
          ),
        ],
      ),
    );
  }
}
