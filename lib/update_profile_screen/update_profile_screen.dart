import 'package:flutter/material.dart';
import 'package:movies_app/constants/app_assets.dart';
import 'package:movies_app/constants/app_theme.dart';
import 'package:movies_app/widgets/avatars_list.dart';
import 'package:movies_app/widgets/elevated_button.dart';

import '../widgets/text_form_field.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  String userName = 'John Safwat';
  String userPhone = '01200000000';
  final List<String> avatars = AppAssets.avatarsList;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: AppTheme.yellow, size: 30),
        title: Text('Pick Avatar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: pickAvatar,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(avatars[selectedIndex]),
              ),
            ),
            SizedBox(height: 35),
            CustomizeTextFormField(
              defaultText: userName,
              iconName: 'name',
              // name: 'sama',
              icon: Icons.person,
            ),
            SizedBox(height: 19.28),
            CustomizeTextFormField(
              defaultText: userPhone,
              iconName: 'phone',
              // name: 'phone',
              icon: Icons.phone_rounded,
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Reset Password',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            SizedBox(height: 260),
            CustomizeElevatedButton(
              text: 'Delete Account',
              backgroundColor: AppTheme.red,
              textColor: AppTheme.white,
            ),
            SizedBox(height: 15),
            CustomizeElevatedButton(
              text: 'Update Data',
              backgroundColor: AppTheme.yellow,
              textColor: AppTheme.black,
            ),
          ],
        ),
      ),
    );
  }

  void pickAvatar() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return AvatarsList(
              avatars: avatars,
              selectedIndex: selectedIndex,
              onAvatarSelected: (index) {
                setModalState(() {
                  selectedIndex = index;
                });
                setState(() {
                  selectedIndex = index;
                });
                // Navigator.pop(context);
              },
            );
          },
        );
      },
    );
  }
}
