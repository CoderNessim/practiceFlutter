import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white, // Set background to white
              borderRadius: BorderRadius.circular(15), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color:
                      Colors.black.withOpacity(0.2), // Slightly stronger shadow
                  spreadRadius: 0.0,
                  blurRadius: 20, // Soften the shadow
                  offset: const Offset(0, 10), // Position the shadow below
                ),
              ],
            ),
            child: TextField(
              style: const TextStyle(color: Colors.black), // Black input text
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(
                    color: Colors.black54), // Semi-transparent hint text
                fillColor: Colors.white, // Match container's color
                filled: true, // Apply fillColor
                prefixIcon: const Icon(Icons.search,
                    color: Colors.black), // Black search icon
                suffixIcon: const Icon(Icons.filter_list, color: Colors.black),
                contentPadding: const EdgeInsets.all(15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Match container's border radius
                  borderSide: BorderSide.none, // Remove border lines
                ),
              ),
            ),
          ),
          // Add more widgets here if needed
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black, // Text color
          fontSize: 20, // Font size
          fontWeight: FontWeight.bold, // Font weight
        ),
      ),
      backgroundColor: Colors.white, // AppBar background color
      elevation: 0, // Remove shadow beneath AppBar
      centerTitle: true, // Center the title
      leading: GestureDetector(
        onTap: () {
          // Define your back action here
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.backspace, color: Colors.black),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Define your menu action here
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
