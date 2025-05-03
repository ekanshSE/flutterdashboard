import 'package:flutter/material.dart';
import 'package:asflapp/widgets/ProfileSection.dart';

class Sidebar extends StatelessWidget {
  final bool showWorkspaceItems;
  final VoidCallback toggleWorkspaceItems;

  Sidebar({
    super.key,
    required this.showWorkspaceItems,
    required this.toggleWorkspaceItems,
  });

  final List<Map<String, dynamic>> menuItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.group, 'label': 'Employees'},
    {'icon': Icons.list, 'label': 'Attendence'},
    {'icon': Icons.calendar_month, 'label': 'Summary'},
    {'icon': Icons.info, 'label': 'Information'},
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        
        double sidebarWidth = constraints.maxWidth > 800 ? 220 : 180; 

        return Container(
          width: sidebarWidth,
          color: Colors.white,
          padding: EdgeInsets.all(constraints.maxWidth > 800 ? 20 : 12), 
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 60,
                  width: 120,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 12),
                Divider(color: Colors.grey.shade400, thickness: 1),
                SizedBox(height: 12),
                ProfileSection(),
                SizedBox(height: 12),
                Divider(color: Colors.grey.shade400, thickness: 1),
                SizedBox(height: 20),
                ...menuItems.map(
                  (item) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6), 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(item['icon'], size: 20, color: Colors.black54),
                        SizedBox(width: 8), 
                        Text(
                          item['label'],
                          style: TextStyle(fontSize: 14, color: Colors.black87), 
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: toggleWorkspaceItems,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6), 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, size: 20, color: Colors.black54),
                        SizedBox(width: 8), 
                        Text(
                          'WORKSPACE',
                          style: TextStyle(fontSize: 14, color: Colors.black87), 
                        ),
                      ],
                    ),
                  ),
                ),
                if (showWorkspaceItems) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 4, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Adstack',
                          style: TextStyle(fontSize: 12, color: Colors.black87), 
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 16,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 4, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Finance',
                          style: TextStyle(fontSize: 12, color: Colors.black87), 
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 16,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                ],
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings, size: 20, color: Colors.black54),
                      SizedBox(width: 8), 
                      Text(
                        'Settings',
                        style: TextStyle(fontSize: 14, color: Colors.black87), 
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, size: 20, color: Colors.black54),
                      SizedBox(width: 8), 
                      Text(
                        'Logout',
                        style: TextStyle(fontSize: 14, color: Colors.black87), 
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
