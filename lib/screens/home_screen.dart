import 'package:flutter/material.dart';
import 'package:bingo/widgets/widgets.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _pages = <Widget>[
    const Center(
      child: Grid(
        size: 4,
      ),
    ),
    const CircularProgressIndicator(
      backgroundColor: Colors.red,
    ),
    const Text("HEK"),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Builder(
                builder: (context) => NeuButton(
                  size: 32,
                  color: Colors.red,
                  icon: const Icon(
                    Icons.menu,
                    size: 26,
                    color: Colors.black,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const Text(
                '',
              )
            ],
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      body: CircleBackground(
        childWidget: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
      ),
      drawer: StyledDrawer(),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(0),
            ),
            border: Border.all(color: Colors.black, width: 3),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(3, 4),
              )
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.lightGreen.shade200,
            unselectedItemColor: Colors.black,
            elevation: 0,
            selectedItemColor: Colors.red,
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.gamepad),
                label: 'Game',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Rules',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}