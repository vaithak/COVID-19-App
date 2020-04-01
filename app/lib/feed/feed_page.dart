import 'package:covid_19_app/feed/govt_updates_page.dart';
import 'package:covid_19_app/feed/news_feed_page.dart';
import 'package:covid_19_app/feed/tweets_feed_page.dart';
import 'package:covid_19_app/feed/video_feed_page.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
  

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
            iconData: Icons.textsms,
            title: "Tweets",
          ),
          TabData(
            iconData: Icons.video_library,
            title: "Videos",
          ),
          TabData(
            iconData: Icons.library_books,
            title: "News"
          ),
          TabData(
            iconData: Icons.home,
            title: "Govt"
          ),
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return TweetsFeedPage();
      case 1:
        return VideoFeedPage();
      case 2:
        return NewsFeedPage();
      case 3:
        return GovtUpdatesPage();
      default:
        return TweetsFeedPage();
    }
  }
}