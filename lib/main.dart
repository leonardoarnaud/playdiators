import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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

  final pageController = PageController(
    initialPage: 0
  );

  final _nickTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () =>
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context){
              return Container(
                height: MediaQuery.of(context).size.height - AppBar().preferredSize.height - 20,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Defina seu apelido"),
                        FlatButton(
                            onPressed: () => Navigator.pop(context),
                            child: Icon(Icons.close_rounded)
                        )
                      ],
                    ),
                    Container(
                      child: TextField(
                        controller: _nickTextEditingController,
                      ),
                    ),
                    FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Continuar")
                    )
                  ],
                ),
              );
            }
        )
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(child: Text("Page Duelos")),
          Container(child: Text("Page Ranking")),
          Container(child: Text("Page Estrelas"))
        ],
        onPageChanged: (i) => setPage(i),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              label: "Duelos"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard_rounded),
              label: "Ranking"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_rounded),
              label: "Estrelas"
          ),
        ],
        onTap: (i) => setPage(i),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: searchDuel(),
        child: Icon(Icons.search),
      ),
    );
  }

  setPage(int i) {
    if (i != _currentPage){
      setState(() {
        _currentPage = i;
        pageController.animateToPage(
            _currentPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.decelerate
        );
      });
    }
  }

  searchDuel() {}
}
