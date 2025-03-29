import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/images/1.jpg',
              width: 300,
              height: 170,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Colors.red.withOpacity(0.8),
              child: Text(
                'طرق الوقاية من الأمراض',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
