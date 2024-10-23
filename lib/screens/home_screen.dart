import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    // Get screen width to adjust layout for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(),
        bottomNavigationBar: customBottomNavigationBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Video categories
              SizedBox(
                height: 40, // Reduce height for a more compact design
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    categoryButton('All'),
                    categoryButton('Music'),
                    categoryButton('Gaming'),
                    categoryButton('News'),
                     categoryButton('Movies'),
                      categoryButton('Education'),
                  ],
                ),
              ),
              // Display videos based on selected category
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                child: Text(
                  'Recommended Videos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              // Set fixed height for GridView to prevent overflow
              SizedBox(
                height: 300, // Adjust based on content, ensures no overflow
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(), // Prevent inner scrolling
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: screenWidth < 600 ? 2 : 3, // Adjust based on screen width
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: screenWidth < 600 ? 16 / 10 : 16 / 9, // Adjust aspect ratio for smaller screens
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const VideoCard();
                  },
                ),
              ),
              // Shorts section
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                child: Text(
                  'Shorts',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              // Set fixed height for shorts to ensure it doesn't overflow
              SizedBox(
                height: 200, // Increase height for better visibility of shorts
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Changed to horizontal scrolling for mobile-friendliness
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: screenWidth * 0.4, // Make shorts take about 40% of screen width
                      child: const VideoCard(isShort: true),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryButton(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = category;
          });
        },
        child: Chip(
          label: Text(
            category,
            style: TextStyle(
                color: selectedCategory == category
                    ? Colors.white
                    : Colors.grey),
          ),
          backgroundColor: selectedCategory == category
              ? Colors.red
              : Colors.white,
        ),
      ),
    );
  }
}
