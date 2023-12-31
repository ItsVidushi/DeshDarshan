import 'package:flutter/material.dart';
import 'assets_page.dart';
import 'page3.dart';
import 'team_folder.dart';

class ProjectPage extends StatelessWidget {
  final String folderName;
  ProjectPage({required this.folderName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Use the back arrow icon
          onPressed: () {
            // Navigate to the desired class when the back button is pressed
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TeamFolderPage(),// Replace YourClassName with the class you want to navigate to
              ),
            );
          },),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/p.jpeg'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7, // Add this line
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map.jpeg'), // Replace with your nav bar image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page3(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: Text("Locate yourself", style: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(height: 16),
          // Add your buttons at the bottom of the page
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            ],
          ),
        ],
      ),
    );
  }
}