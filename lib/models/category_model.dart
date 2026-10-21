import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final int count;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;

  CategoryModel({
    required this.title,
    required this.count,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      title: 'Personal',
      count: 12,
      icon: Icons.segment_rounded,
      iconColor: const Color(0xFFEF4444),
      backgroundColor: const Color(0xFFFEF2F2),
    ),
    CategoryModel(
      title: 'Work',
      count: 8,
      icon: Icons.business_center_rounded,
      iconColor: const Color(0xFF3B82F6),
      backgroundColor: const Color(0xFFEFF6FF),
    ),
    CategoryModel(
      title: 'Ideas',
      count: 6,
      icon: Icons.lightbulb_rounded,
      iconColor: const Color(0xFFF59E0B),
      backgroundColor: const Color(0xFFFFFBEB),
    ),
    CategoryModel(
      title: 'Shopping',
      count: 5,
      icon: Icons.shopping_cart_rounded,
      iconColor: const Color(0xFF10B981),
      backgroundColor: const Color(0xFFECFDF5),
    ),
    CategoryModel(
      title: 'Travel',
      count: 4,
      icon: Icons.flight_rounded,
      iconColor: const Color(0xFFA855F7),
      backgroundColor: const Color(0xFFFAF5FF),
    ),
    CategoryModel(
      title: 'Others',
      count: 3,
      icon: Icons.grid_view_rounded,
      iconColor: const Color(0xFF2563EB),
      backgroundColor: const Color(0xFFF0F9FF),
    ),
  ];
}
