import 'package:coffee_shop/widgets/search_bar.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = 'explore coffee';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomSearchBar(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
            // You can use searchQuery to filter content below
            Expanded(
              child: Center(
                child: Text('Search result for: $searchQuery'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
