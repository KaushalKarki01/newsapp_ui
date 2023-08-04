import 'package:flutter/material.dart';
import 'package:newsapp/pages/tabs/allnews.dart';
import 'package:newsapp/pages/tabs/businessnews.dart';
import 'package:newsapp/pages/tabs/entertainment.dart';
import 'package:newsapp/pages/tabs/political.dart';
import 'package:newsapp/pages/tabs/popular.dart';
import 'package:newsapp/pages/tabs/sports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Text('Light News'),
            leading: Icon(Icons.menu),
            actions: [Icon(Icons.notifications_active)],
            bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.black54,
                tabs: [
                  Tab(
                    text: 'Popular',
                  ),
                  Tab(text: 'All'),
                  Tab(text: 'Politics'),
                  Tab(text: 'Sports'),
                  Tab(text: 'Entertainment'),
                  Tab(text: 'Business'),
                ]),
          ),
          body: TabBarView(
            children: [
              PopularPage(),
              AllNews(),
              PoliticalNews(),
              SportsNews(),
              EntertainmentNews(),
              BusinessNews(),
            ],
          ),
        ));
  }
}
