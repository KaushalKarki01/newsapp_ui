import 'package:flutter/material.dart';
import 'package:newsapp/pages/tabs/popular.dart';

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
              Center(
                child: Text('All'),
              ),
              Center(
                child: Text('Politics'),
              ),
              Center(
                child: Text('Sports'),
              ),
              Center(
                child: Text('Entertainment'),
              ),
              Center(
                child: Text('Business'),
              ),
            ],
          ),
        ));
  }
}
