import 'package:flutter/material.dart';
import '../models/user_model.dart';

import '../widgets/profile_info_card.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({super.key, required this.user});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile') ,),


      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
             backgroundImage: NetworkImage('https://images.hellomagazine.com/horizon/landscape/d6807a326468-mh-david-beckham.jpg?tx=c_limit,w_960'),
            ),
            const SizedBox(height: 20),

            ProfileInfoCard(label: 'Name', value: user.name),
            ProfileInfoCard(label: 'Email', value: user.email),
            ProfileInfoCard(label: 'Phone', value: user.phone),
             ProfileInfoCard(label: 'DOB', value: user.dob),
            const SizedBox(height: 20),


            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    
    
    
    
    );
  }
}
