import 'package:flutter/material.dart';
import 'package:todo_app/Screens/Home_Screen/HomeScreen.dart';

import '../AddTask.dart';

class HomeLayout extends StatefulWidget {
  static const String routes = 'HomeLayout';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> screens = [HomeScreen(), HomeScreen()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showAddTaske();
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            ]),
      ),
      body: screens[index],
    );
  }
  Future showAddTaske(){
    return showModalBottomSheet(context: context, builder: (context){
      return AddTask();
    },);
  }
}
