import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onNavTap,
  });

  final int currentIndex;
  final void Function(int) onNavTap;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: AppDefaults.margin,
      color: AppColors.scaffoldBackground,
      child: SizedBox(
        height: 70, // Increase the height to provide more space
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(
              context: context,
              name: 'Home',
              iconLocation: Icons.home,
              index: 0,
            ),
            _buildNavItem(
              context: context,
              name: 'Menu',
              iconLocation: Icons.menu,
              index: 1,
            ),
            const SizedBox(width: AppDefaults.margin * 4), // Space for FAB
            _buildNavItem(
              context: context,
              name: 'Save',
              iconLocation: Icons.save,
              index: 3,
            ),
            _buildNavItem(
              context: context,
              name: 'Profile',
              iconLocation: Icons.person,
              index: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required String name,
    required IconData iconLocation,
    required int index,
  }) {
    final isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => onNavTap(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Reduced padding to fit within height
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconLocation,
              size: 24,
              color: isActive ? AppColors.primary : Colors.grey,
            ),
            const SizedBox(height: 2), // Adjusted spacing
            Text(
              name,
              style: TextStyle(
                fontSize: 10, // Slightly reduced font size
                color: isActive ? AppColors.primary : Colors.grey,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
