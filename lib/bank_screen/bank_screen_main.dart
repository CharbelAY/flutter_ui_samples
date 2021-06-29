import 'package:flutter/material.dart';

class BankScreenMain {
  Widget render() {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Overview',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.purple, Colors.red],
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
            )),
          ),
          elevation: 20.0,
//        titleSpacing: 10.0,
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          tabs: [
            Tab(icon:Icon(Icons.home),text:'home'),
            Tab(icon:Icon(Icons.star),text:'star'),
            Tab(icon:Icon(Icons.face),text:'face'),
            Tab(icon:Icon(Icons.settings),text:'settings'),
            Tab(icon:Icon(Icons.home),text:'home'),
            Tab(icon:Icon(Icons.star),text:'star'),
            Tab(icon:Icon(Icons.face),text:'face'),
            Tab(icon:Icon(Icons.settings),text:'settings'),
          ],
        ),
        ),
        body: TabBarView(
          children: [
            buildPage('home_page'),
            buildPage('star_page'),
            buildPage('profile_page'),
            buildPage('settings_page'),
            buildPage('home_page'),
            buildPage('star_page'),
            buildPage('profile_page'),
            buildPage('settings_page'),
          ],
        ),
      ),
    );
  }

  Widget buildPage (String text)=>Center(
    child: Text(text),
  );
}
