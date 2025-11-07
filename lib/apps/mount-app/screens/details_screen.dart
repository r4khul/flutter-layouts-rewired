import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/mock_mount_data.dart';
import 'package:layouts_practice/apps/mount-app/models/mount.dart';
import 'package:layouts_practice/apps/mount-app/widgets/details_bottom.dart';
import 'package:layouts_practice/apps/mount-app/widgets/details_header.dart';

class DetailsScreen extends StatelessWidget {
  final MountModel item;
  const DetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: DetailsHeader(item: item)),
          Expanded(child: DetailsBottom(item: item)),
        ],
      ),
    );
  }
}
