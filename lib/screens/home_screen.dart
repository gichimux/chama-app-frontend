import 'package:flutter/material.dart';
import 'package:chama_app_ui/config/palette.dart';
import 'package:chama_app_ui/config/styles.dart';
import 'package:chama_app_ui/widgets/widgets.dart';
import 'package:chama_app_ui/data/data.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _chamaListHeader(screenHeight),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            sliver: SliverToBoxAdapter(
              child: ChamaListGrid(),
            ),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter _chamaListHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: screenHeight * 0.03),
            Text(
              
              'My chamas:',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10.0),
            
          ],
        ),
      ),
    );
  }
}
