import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:step_03/components/detail_date_time.dart';
import 'package:step_03/components/detail_divider.dart';
import 'package:step_03/components/news_detail_title.dart';
import 'package:step_03/components/read_more_button.dart';
import 'package:step_03/constants/api_constants.dart';
import 'package:step_03/model/article.dart';
import 'package:step_03/theme/colors.dart';
import 'package:step_03/theme/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Text(
          article.title,
          overflow: TextOverflow.fade,
        ),
        actions: article.url != null
            ? [
                IconButton(
                    onPressed: () {
                      Share.share(article.url!);
                    },
                    icon: const Icon(Icons.share))
              ]
            : null,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        children: [
          NewsDetailTitle(article: article),
          const DetailDivider(),
          DetailDateTime(article: article.publishedAt),
          const SizedBox(
            height: 10,
          ),
          // Image.network(article.urlToImage ?? ApiConst.sourchNews),
          CachedNetworkImage(
            imageUrl: article.urlToImage ?? News.newsImage,
            placeholder: (context, url) =>
                Image.asset('assets/newsImageForUnknown.png'),
            errorWidget: (context, url, error) =>
                Image.asset('assets/Errors-01.png'),
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            article.description ?? 'No Description',
            style: AppTextStyle.detailDescription,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          article.url != null
              ? ReadMoreButton(
                  onPressed: () async {
                    final uri = Uri.parse(article.url!);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    }
                  },
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
