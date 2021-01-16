import 'package:flutter/material.dart';
import 'package:playdiators/theme.dart';
import 'package:playdiators/tools/quick_modal.dart';
import 'package:playdiators/ui/auth/auth_pager_widget.dart';
import 'package:playdiators/ui/duel/setup_search_duel_pager_widget.dart';
import 'package:playdiators/ui/home/bottom_navigation_items.dart';
import 'package:playdiators/ui/home/duels_page_widget.dart';
import 'package:playdiators/ui/home/ranking_page_widget.dart';
import 'package:playdiators/ui/home/stars_page_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playdiators',
      theme: theme,
      home: MyHomePage(title: 'Playdiators'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPage = 0;
  final _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    super.initState();

    //showModal(context, AuthPagerWidget());
  }

  @override
  Widget build(BuildContext context) => buildMainLayout();

  Scaffold buildMainLayout() {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          DuelsPageWidget(),
          RankingPageWidget(),
          StarsPageWidget()
        ],
        onPageChanged: (i) => _setPage(i),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        items: homeNavigationItems,
        onTap: (i) => _setPage(i),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModal(context, SetupSearchDuelPagerWidget()),
        child: Icon(Icons.search),
      ),
    );
  }

  void _setPage(int i) {
    if (i != _currentPage){
      setState(() {
        _currentPage = i;
        _pageController.animateToPage(
            _currentPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.decelerate
        );
      });
    }
  }

  searchDuel() {}

}
