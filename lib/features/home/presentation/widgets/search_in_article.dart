import 'package:flutter/material.dart';

class SearchInArticle extends StatelessWidget {
  const SearchInArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),

          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          hintText: "ادخل كلمة البحث هنا",
        ),
      ),
    );
  }
}
