import 'package:flutter/material.dart';


ValueNotifier<int> indexChangeNotifier=ValueNotifier(0);

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifier, 
    builder:(context,int newIndex, _) {
      return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: newIndex,
      onTap:(index) {
        indexChangeNotifier.value=index;
      },
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(
        color: Colors.white
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.grey
      ),
      items:const[
         BottomNavigationBarItem(icon:Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.collections,),label: "New & Hot"),
           BottomNavigationBarItem(icon:Icon(Icons.emoji_emotions,),label: "Fast Laughs"),
            BottomNavigationBarItem(icon:Icon(Icons.search,),label: "Search"),
            BottomNavigationBarItem(icon:Icon(Icons.download,),label: "Downloads"),
      ],
      );
      
    }, );
  }
}