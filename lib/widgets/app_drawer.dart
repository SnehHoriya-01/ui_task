import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(int)? onSelectItem;
  final int selectedIndex;

  const AppDrawer({
    super.key,
    this.onSelectItem,
    this.selectedIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // User Header
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF4F46E5), // Vibrant Indigo Blue
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'S',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4F46E5),
                ),
              ),
            ),
            accountName: const Text(
              'Sneh Rajgor',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            accountEmail: const Text(
              'sneh@example.com',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ),

          // Drawer Navigation Items
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildDrawerItem(
                  context,
                  icon: Icons.home_rounded,
                  title: 'Home',
                  isSelected: selectedIndex == 0,
                  onTap: () {
                    Navigator.pop(context);
                    if (onSelectItem != null) onSelectItem!(0);
                  },
                ),
                _buildDrawerItem(
                  context,
                  icon: Icons.grid_view_rounded,
                  title: 'Categories',
                  isSelected: selectedIndex == 1,
                  onTap: () {
                    Navigator.pop(context);
                    if (onSelectItem != null) onSelectItem!(1);
                  },
                ),
                _buildDrawerItem(
                  context,
                  icon: Icons.archive_outlined,
                  title: 'Archive',
                  onTap: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Archive section selected'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
                _buildDrawerItem(
                  context,
                  icon: Icons.delete_outline_rounded,
                  title: 'Trash',
                  onTap: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Trash section selected'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
                _buildDrawerItem(
                  context,
                  icon: Icons.settings_outlined,
                  title: 'Settings',
                  onTap: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Settings opened'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
                _buildDrawerItem(
                  context,
                  icon: Icons.help_outline_rounded,
                  title: 'Help & Support',
                  onTap: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Help & Support clicked'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          const Divider(height: 1),

          // Logout Item
          ListTile(
            leading: const Icon(Icons.logout_rounded, color: Colors.redAccent),
            title: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Logged out successfully'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    bool isSelected = false,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFEEF2FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected ? const Color(0xFF4F46E5) : Colors.black87,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? const Color(0xFF4F46E5) : Colors.black87,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          ),
        ),
        onTap: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
