import 'package:flutter/material.dart';

void main() {
  // Entry point of the application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp configures the overall app theme and navigation
    return MaterialApp(
      title: 'Profile Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic material design layout structure
    return Scaffold(
      backgroundColor: Colors.grey[200],
   appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Consistent padding around the card
        child: Center(
          child: Card(
            // Card widget with rounded corners and elevation
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Minimizes vertical space usage
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                // User's full name in bold
                  const Text(
                    'Alice Njambi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  const SizedBox(height: 4),
                  
                
                  const Text(
                    'Email:alice@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
          
                  const Text(
                    'Phone Number:0778654321',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  
                  const SizedBox(height: 16),

                  // Row with 3 icon-label pairs for contact details
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
