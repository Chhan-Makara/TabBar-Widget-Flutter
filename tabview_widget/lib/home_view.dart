import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabView widget"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // Set  preferred height
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.red, // Changes the underline color
              indicatorWeight: 4, // Makes the underline thicker
              labelColor: Colors.red, // Selected tab text color
              unselectedLabelColor: Colors.grey, // Unselected tab text color
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.star), text: "Favorites"),
                Tab(icon: Icon(Icons.settings), text: "Settings"),
                Tab(icon: Icon(Icons.person), text: "Profile"),
                Tab(icon: Icon(Icons.location_city), text: "Address"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(child: Text("Hello flutter1")),
          Center(child: Text("Hello flutter2")),
          Center(child: Text("Hello flutter3")),
          Center(child: Text("Hello flutter4")),
          Center(child: Text("Hello flutter5")),
        ],
      ),
    );
  }
}
