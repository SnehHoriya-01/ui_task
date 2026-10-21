import 'package:flutter/material.dart';

class NoteModel {
  final String id;
  final String title;
  final String subtitle;
  final String category;
  final String date;
  final Color iconColor;
  final IconData icon;

  NoteModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.category,
    required this.date,
    required this.iconColor,
    required this.icon,
  });

  // Central list of notes
  static List<NoteModel> notes = [
    NoteModel(
      id: '1',
      title: 'Meeting Notes',
      subtitle: 'Discuss project timeline, team deliverables, and milestone releases for Q4.',
      category: 'Work',
      date: '16 Oct',
      iconColor: const Color(0xFFF97316),
      icon: Icons.edit_note,
    ),
    NoteModel(
      id: '2',
      title: 'Shopping List',
      subtitle: 'Milk, Bread, Fruits, Vegetables, Coffee beans, and Almond milk.',
      category: 'Shopping',
      date: '15 Oct',
      iconColor: const Color(0xFFA855F7),
      icon: Icons.format_list_bulleted_rounded,
    ),
    NoteModel(
      id: '3',
      title: 'Travel Plan',
      subtitle: 'Goa trip planning: Flight bookings, hotel reservations, and sightseeing spots.',
      category: 'Travel',
      date: '14 Oct',
      iconColor: const Color(0xFF10B981),
      icon: Icons.navigation_rounded,
    ),
    NoteModel(
      id: '4',
      title: 'Workout Routine',
      subtitle: 'Gym schedule: Push Day on Mon, Pull Day on Wed, Leg Day on Fri. Hydrate well.',
      category: 'Personal',
      date: '12 Oct',
      iconColor: const Color(0xFF3B82F6),
      icon: Icons.rocket_launch_rounded,
    ),
    NoteModel(
      id: '5',
      title: 'Book Ideas',
      subtitle: 'New story concepts focusing on sci-fi, time travel, and parallel dimensions.',
      category: 'Ideas',
      date: '10 Oct',
      iconColor: const Color(0xFFEF4444),
      icon: Icons.menu_book_rounded,
    ),
  ];

  static void addNote(NoteModel newNote) {
    notes.insert(0, newNote);
  }

  static void deleteNote(String id) {
    notes.removeWhere((note) => note.id == id);
  }
}
