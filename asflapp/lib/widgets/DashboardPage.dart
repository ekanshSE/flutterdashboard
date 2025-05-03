import 'package:flutter/material.dart';
import 'package:asflapp/widgets/Sidebar.dart';
import 'package:asflapp/widgets/MainContent.dart';
import 'package:asflapp/widgets/RightPanel.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool showWorkspaceItems = false;
  bool showRightPanel = false;  

  void toggleWorkspaceItems() {
    setState(() {
      showWorkspaceItems = !showWorkspaceItems;
    });
  }

  void toggleRightPanel() {
    setState(() {
      showRightPanel = !showRightPanel;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      
      return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          actions: [
            
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'right_panel') {
                  toggleRightPanel();
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'right_panel',
                    child: Text('Toggle Right Panel'),
                  ),
                ];
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: Sidebar(
            showWorkspaceItems: showWorkspaceItems,
            toggleWorkspaceItems: toggleWorkspaceItems,
          ),
        ),
        body: Stack(
          children: [
            MainContent(), 
            if (showRightPanel) 
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                width: 300,
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    color: Colors.black54,
                    child: RightPanel(),
                  ),
                ),
              ),
          ],
        ),
      );
    } else {
      
      return Scaffold(
        body: Row(
          children: [
            Sidebar(
              showWorkspaceItems: showWorkspaceItems,
              toggleWorkspaceItems: toggleWorkspaceItems,
            ),
            Expanded(flex: 3, child: MainContent()),
            RightPanel(),
          ],
        ),
      );
    }
  }
}
