import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../config/routes.dart';

class AnimeCard extends StatelessWidget {
  final String id;
  final String title;
  final String imagePath;

  const AnimeCard({
    super.key,
    required this.id,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        context.push('${AppRoutes.details}/$id');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: screenWidth * 0.015),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: screenWidth * 0.033,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}