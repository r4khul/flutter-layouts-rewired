import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/mock_mount_data.dart';
import 'package:layouts_practice/apps/mount-app/widgets/details_header.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final item = mountItems[0];
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: DetailsHeader(item: item)),
          Expanded(child: Text("btw")),
        ],
      ),
    );
  }
}
