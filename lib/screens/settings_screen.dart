import 'package:flutter/material.dart';

import '../resources/auth_methods.dart';
import '../utils/colors.dart';
import '../widgets/custom_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 4),
            elevation: 15,
            color: secondaryBackgroundColor,
            child: ListTile(
              leading: Image.network(
                  '${AuthMethods().user.photoURL}',
                width: 65,
                height: 65,
              ),
              title: Text(
                '${AuthMethods().user.displayName}',
              ),
              subtitle: Text(
                '${AuthMethods().user.email}',
              ),
            ),
          ),
          CustomButton(text: 'Log Out', onPressed: () => AuthMethods().signOut()),
        ],
      ),
    );
  }
}
