import 'package:flutter/material.dart';

class ChamaListGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: Column(
        children: <Widget>[
          Flexible(
            child: Column(
              children: <Widget>[
                _buildStatCard('Chama x Self Help Group',Icons.arrow_drop_down_circle_outlined,  Colors.green),
              ],
            ),
          ),
          Flexible(
            child: Column(
              children: <Widget>[
                _buildStatCard('Chama y Self Help Group',Icons.arrow_drop_down_circle_outlined,  Colors.blue),
              ],
            ),
          ),
           Flexible(
            child: Column(
              children: <Widget>[
                _buildStatCard('Chama z Self Help Group',Icons.arrow_drop_down_circle_outlined,  Colors.orange),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildStatCard(String chamaname, IconData icon,  MaterialColor color) {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
      
                Text(
                  chamaname,
                  style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
              ),
            ),
           

              
                  
          ],
        ),
      ),
      ),
    );
  }
}
