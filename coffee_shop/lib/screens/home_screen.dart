import 'package:coffee_shop/widgets/search_bar.dart' as custom_widgets;
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchTerm = '';

  void handleSearch(String query) {
    setState(() {
      searchTerm = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            custom_widgets.SearchBar(onSearch: handleSearch), // Use the widget here
           
          ],
        ),
      ),
    );
  }
}
