import 'package:flutter/material.dart';
import 'package:chama_app_ui/config/palette.dart';
import 'package:chama_app_ui/config/styles.dart';
import 'package:chama_app_ui/widgets/widgets.dart';
import 'package:chama_app_ui/data/data.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MemberDashScreen extends StatefulWidget {
  @override
  _MamberDashState createState() => _MamberDashState();
}

class _MamberDashState extends State<MemberDashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
           SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            sliver: SliverToBoxAdapter(
              child: StatsGrid(),
            ),
          ),
          _repayButton(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0),
            bottomRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     IconButton(
            //       icon: const Icon(Icons.group_work),
            //       iconSize: 33.0,
            //       color: Colors.white,
            //       onPressed: () {},
            //     ),
            //   ],
            // ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Chama x self help group',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {},
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.save_alt,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Add Savings',
                        style: Styles.buttonTextStyle,
                      ),
                      textColor: Colors.white,
                    ),
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {},
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.monetization_on_rounded,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Borrow Loan',
                        style: Styles.buttonTextStyle,
                      ),
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),SizedBox(height: screenHeight * 0.02),
          ],
        ),
      ),
    );
  }
}

SliverToBoxAdapter _repayButton(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      padding: const EdgeInsets.all(8.0),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20.0),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                      children: <Widget>[
                        
                     FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {},
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.upload_sharp,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Repay Loan',
                        style: Styles.buttonTextStyle,
                      ),
                      textColor: Colors.white,
                    ),
                      
                      ],
                    ),
          SizedBox(height: screenHeight * 0.03),
        ],
      ),
    ),
  );
}

