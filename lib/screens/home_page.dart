import 'package:flutter/material.dart';
import '../widgets/app_bottom_navigation.dart';
import '../widgets/category_chip.dart';
import '../widgets/top_courses_grid.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Keep Moving Up',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      CategoryChip(label: 'Development', icon: Icons.code),
                      CategoryChip(label: 'IT & Software', icon: Icons.computer),
                      CategoryChip(label: 'UI/UX Design', icon: Icons.design_services),
                      CategoryChip(label: 'Business', icon: Icons.business),
                      CategoryChip(label: 'Finance & Business', icon: Icons.attach_money),
                      CategoryChip(label: 'Personal Growth', icon: Icons.self_improvement),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Top Courses',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            TopCoursesGrid(),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigation(),
    );
  }
}
