import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Color(0xFF101C44),
      padding: const EdgeInsets.all(8), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          RightPanelAppBar(),
          SizedBox(height: 8), 

          
          Text(
            "GENERAL 10:00 AM TO 7:00 PM",
            style: TextStyle(
              fontSize: 12, 
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8), 

          
          SizedBox(
            height: 200, 
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: DateTime.now(),
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  outsideDaysVisible: false,
                  cellMargin: EdgeInsets.all(1), 
                ),
                rowHeight: 20, 
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(fontSize: 8), 
                  weekendStyle: TextStyle(fontSize: 8),
                ),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    fontSize: 10, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onDaySelected: (selectedDay, focusedDay) {
                  
                },
              ),
            ),
          ),
          SizedBox(height: 8), 

          
          TodayBirthdayCard(),

          
          AnniversaryCard(),
        ],
      ),
    );
  }
}


class RightPanelAppBar extends StatelessWidget {
  const RightPanelAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40, 
      padding: const EdgeInsets.symmetric(horizontal: 8), 
      decoration: BoxDecoration(
        color: Color(0xFF101C44), 
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.dashboard, color: Colors.white, size: 16), 
                tooltip: 'Dark Mode',
              ),
              SizedBox(width: 5), 
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none, color: Colors.white, size: 16), 
                tooltip: 'Notifications',
              ),
              SizedBox(width: 5), 
              IconButton(
                onPressed: () {
                  
                },
                icon: Icon(Icons.power_settings_new, color: Colors.white, size: 16), 
                tooltip: 'On/Off',
              ),
            ],
          ),

          
          CircleAvatar(
            radius: 12, 
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Color(0xFF101C44), size: 16), 
          ),
        ],
      ),
    );
  }
}


class TodayBirthdayCard extends StatelessWidget {
  const TodayBirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8), 
      margin: const EdgeInsets.only(bottom: 10), 
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 51, 44, 100), Color.fromARGB(255, 32, 28, 62)], 
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8), 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.cake, color: Colors.amber, size: 16), 
              SizedBox(width: 5), 
              Text(
                "Today Birthday",
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold), 
              ),
              Spacer(),
              Icon(Icons.star, color: Colors.amber, size: 16), 
            ],
          ),
          SizedBox(height: 10), 
          Row(
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
                radius: 15, 
              ),
              SizedBox(width: 5), 
              CircleAvatar(
                backgroundImage: AssetImage('assets/avatar2.png'),
                radius: 15, 
              ),
            ],
          ),
          SizedBox(height: 8), 
          Row(
            children: const [
              Text("Total", style: TextStyle(color: Colors.grey, fontSize: 10)), 
              SizedBox(width: 5),
              Text("2", style: TextStyle(color: Colors.white, fontSize: 10)), 
            ],
          ),
          SizedBox(height: 8), 
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8), 
            decoration: BoxDecoration(
              color: Color(0xFF7C50FF), 
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                "Birthday Wishing",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12), 
              ),
            ),
          )
        ],
      ),
    );
  }
}


class AnniversaryCard extends StatelessWidget {
  const AnniversaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8), 
      margin: const EdgeInsets.only(bottom: 10), 
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 51, 44, 100), Color.fromARGB(255, 32, 28, 62)], 
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8), 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.favorite, color: Colors.amber, size: 16), 
              SizedBox(width: 5), 
              Text(
                "Anniversary",
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold), 
              ),
              Spacer(),
              Icon(Icons.star, color: Colors.amber, size: 16), 
            ],
          ),
          SizedBox(height: 10), 
          Row(
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/avatar3.png'),
                radius: 15, 
              ),
              SizedBox(width: 5), 
              CircleAvatar(
                backgroundImage: AssetImage('assets/avatar4.png'),
                radius: 15, 
              ),
              SizedBox(width: 5), 
              CircleAvatar(
                backgroundImage: AssetImage('assets/avatar5.png'),
                radius: 15, 
              ),
            ],
          ),
          SizedBox(height: 8), 
          Row(
            children: const [
              Text("Total", style: TextStyle(color: Colors.grey, fontSize: 10)), 
              SizedBox(width: 5),
              Text("3", style: TextStyle(color: Colors.white, fontSize: 10)), 
            ],
          ),
          SizedBox(height: 8), 
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8), 
            decoration: BoxDecoration(
              color: Color(0xFF7C50FF), 
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                "Anniversary Wishing",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12), 
              ),
            ),
          )
        ],
      ),
    );
  }
}