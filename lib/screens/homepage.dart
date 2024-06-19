import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _handleRefresh() async {
    return await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.blue,
        height: 200,
        backgroundColor: Colors.blue[100],
        showChildOpacityTransition: true,
        animSpeedFactor: 5,
        child: ListView(
          children: [
            for (int i = 0; i < 5; i++)
              Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              )
          ],
        ),
      ),
    );
  }
}
