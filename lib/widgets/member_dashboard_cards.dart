import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: 400.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: screenHeight * 0.02),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildStatCard(Icons.monetization_on, 'Savings:', '30,000', Colors.green),
                _buildStatCard(Icons.pause_presentation, 'Limit:', '30,000', Colors.blue),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildStatCard(Icons.home_repair_service_rounded, 'Borrowed', '30,000', Colors.orange),
                _buildStatCard(Icons.history, 'History', '-', Colors.purple),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildStatCard(IconData icon, String label, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(.5),
        blurRadius: 10.0, // soften the shadow
        spreadRadius: 1.0, //extend the shadow
        offset: Offset(
          5.0, // Move to right 10  horizontally
          5.0, // Move to bottom 10 Vertically
        ),
      )
    ],
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
                      child:
            Material(
              
                    color: new Color(0xFFFFECB3),
                    borderRadius: BorderRadius.circular(22.0),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      
                      child: Icon(
                        icon,
                      color: Colors.black45,
                      size: 30.0,
                      ),
                    ),
                  ),
            ),
            
            Center(
                      child: 
                      Text(
                      label,
                      style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
              ),
            ),
            ),

            Center(
              child: 
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
