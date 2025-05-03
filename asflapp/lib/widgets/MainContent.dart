import 'package:flutter/material.dart';
import 'OverallPerformanceChart.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          AppBarSection(),
          SizedBox(height: 20),

          
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1519389950473-47ba0277781c?fit=crop&w=800&q=80', 
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),

                        
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Top Rated Projects",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Check out what’s trending among your team",
                                style: TextStyle(color: Colors.white70, fontSize: 14),
                              ),
                              Spacer(),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 71, 39, 176),
                                  foregroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                
                                label: Text("learn more"),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  
                  Row(
                    children: [
                      
                      Expanded(
                        child: Container(
                          height: 240,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFF101C44), 
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "All Projects",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white, 
                                ),
                              ),
                              SizedBox(height: 10),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      HoverableTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Color(0xFFEDE7F6),
                                          child: Icon(Icons.folder, color: Colors.purple),
                                        ),
                                        title: "AdStack Redesign",
                                        subtitle: "Status: Ongoing",
                                        onEdit: () {
                                          
                                        },
                                      ),
                                      HoverableTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Color(0xFFE8F5E9),
                                          child: Icon(Icons.folder, color: Colors.green),
                                        ),
                                        title: "Finance Dashboard",
                                        subtitle: "Status: Completed",
                                        onEdit: () {
                                          
                                        },
                                      ),
                                      HoverableTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Color(0xFFFFEBEE),
                                          child: Icon(Icons.folder, color: Colors.red),
                                        ),
                                        title: "HR Portal",
                                        subtitle: "Status: Pending",
                                        onEdit: () {
                                          
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      
                      Expanded(
                        child: Container(
                          height: 240,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFF101C44), 
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Top Creators",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white, 
                                ),
                              ),
                              SizedBox(height: 10),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(color: Colors.white24), 
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                "Name",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                "Artwork",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                "Rating",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 8),

                                      
                                      _buildCreatorTile("Alex Johnson", "Landscape", "4.8"),
                                      _buildCreatorTile("Priya Mehra", "Portrait", "4.5"),
                                      _buildCreatorTile("Rohit Sharma", "Abstract", "4.2"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  
                  OverallPerformanceChart(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  
   Widget _buildCreatorTile(String name, String artwork, String rating) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white24), 
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              artwork,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              rating,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}


class HoverableTile extends StatefulWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final VoidCallback onEdit;

  const HoverableTile({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.onEdit,
  });

  @override
  _HoverableTileState createState() => _HoverableTileState();
}

class _HoverableTileState extends State<HoverableTile> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isHovered ? Color(0xFFD81B60) : Color(0x80FFFFFF), 
          borderRadius: BorderRadius.circular(8),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: widget.leading,
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            widget.subtitle,
            style: TextStyle(color: Colors.grey),
          ),
          trailing: IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: widget.onEdit, 
          ),
        ),
      ),
    );
  }
}
class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 700;

        return isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dashboard",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  SearchAndAvatar(isMobile: true),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dashboard",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SearchAndAvatar(isMobile: false),
                ],
              );
      },
    );
  }
}

class SearchAndAvatar extends StatelessWidget {
  final bool isMobile;
  const SearchAndAvatar({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _searchBar(),
              SizedBox(height: 10),
              _avatar(),
            ],
          )
        : Row(
            children: [
              _searchBar(),
              SizedBox(width: 20),
              _avatar(),
            ],
          );
  }

  Widget _searchBar() {
    return Container(
      width: isMobile ? double.infinity : 300,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFF1C2756),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: const [
          Icon(Icons.search, color: Colors.white54, size: 20),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _avatar() {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: Icon(Icons.person, color: Colors.black),
    );
  }
}

