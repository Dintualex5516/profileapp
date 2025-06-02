import 'package:flutter/material.dart';



class ProfileInfoCard extends StatelessWidget {
  final String label;
  
  final String value;

  const ProfileInfoCard({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
  
   child: ListTile(
        leading: Icon(Icons.info_outline),
        title: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(value),
      ),
    );
 
 
  }


}
