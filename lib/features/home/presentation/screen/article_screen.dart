import 'package:blood_bank/features/home/presentation/widgets/article_card.dart';
import 'package:blood_bank/features/home/presentation/widgets/search_in_article.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            SearchInArticle(),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(top: 20),
                itemCount: 5,
                separatorBuilder:
                    (context, index) => const SizedBox(height: 10),
                itemBuilder: (context, index) => ArticleCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
