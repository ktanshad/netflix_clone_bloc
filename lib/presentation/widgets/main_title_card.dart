import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';


class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,required this.title,
  });

  final String title;
 

  @override
  Widget build(BuildContext context) {  


          return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           MainTitle(
            title: title),
            KHeight,
           SizedBox(
            height: 225,
             child: ListView.separated(
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) => MainCardWidget(imageUrlFromApi: "https://img.download.io/media/785/ios//netflix/13-12-0/netflix-9351.jpg",),
               itemCount: 10,
               separatorBuilder: (context, index) => KWidth,
              
               ),
           )
        ],
      );

      
      
    
  }
}