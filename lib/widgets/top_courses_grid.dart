import 'package:flutter/material.dart';

class TopCoursesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              'Course ${index + 1}',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
      itemCount: 6,
    );
  }
}
