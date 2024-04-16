import 'package:flutter/material.dart';

class GameplayFirst extends StatefulWidget {
  const GameplayFirst({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GameplayFirstState createState() => _GameplayFirstState();
}

int _selectedIndex = 0;

class SettingsPage {
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Setting',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class StorePage {
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Store',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class GamePage {
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Game',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

void setState(Null Function() param0) {}

class _GameplayFirstState extends State<GameplayFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(0, 196, 196, 1),
              Color.fromRGBO(0, 102, 197, 1)
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.info_outlined,
                    color: Colors.white,
                    size: 36,
                  ),
                  const SizedBox(width: 60),
                  Container(
                    margin: const EdgeInsets.all(1.0),
                    padding: const EdgeInsets.all(1.0),
                    child: const Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        height: 1,
                      ),
                    ),
                  ),
                  const SizedBox(width: 1),
                  Container(
                    margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(
                      'assets/images/coin.png',
                      width: 32,
                      //height: 32,
                    ),
                  ),
                  const SizedBox(width: 50),
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    padding: const EdgeInsets.all(2.0),
                    child: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  )
                ],
              ),
              BottomNavigationBar(
                // type: BottomNavigationBarType.fixed,
                backgroundColor: const Color.fromRGBO(0, 102, 197, 1),
                // selectedItemColor: Colors.white,
                // selectedFontSize: 14,
                // unselectedFontSize: 14,
                // onTap: (value) {},

                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.play_circle_fill),
                    label: 'Game',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.store),
                    label: 'Store',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Settings',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ],
          ),
        ),

// GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 10, // Number of columns
//       ),
//       itemCount: 7 * 10, // Number of cells = rows * columns
//       itemBuilder: (BuildContext context, int index) {
//         int rowIndex = index ~/ 10; // Row index
//         int colIndex = index % 10; // Column index

//         return Container(
//           margin: EdgeInsets.all(2), //
//           color: Colors.blueGrey, // Change color as needed
//           child: Center(
//             child: Text(
//               'Cell $rowIndex-$colIndex',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
      ),
    );
  }
}

// title: const Text('0'),
// flexibleSpace: Container(
// decoration: const BoxDecoration(
//   gradient: LinearGradient(
//     begin: Alignment.topCenter,
//     end: Alignment.bottomCenter,
// colors: [
//   Color.fromRGBO(0, 196, 196, 1),
//   Color.fromRGBO(15, 15, 16, 1)
// ],
