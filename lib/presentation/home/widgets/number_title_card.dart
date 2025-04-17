import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';
class NumberTitleCard extends StatefulWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  State<NumberTitleCard> createState() => _NumberTitleCardState();
}

class _NumberTitleCardState extends State<NumberTitleCard> {

  @override
  Widget build(BuildContext context) {
    List imageList=[];    
              
                String imageUrl =
                    'https://img.download.io/media/785/ios//netflix/13-12-0/netflix-9351.jpg';
               
             
              
               if (imageList.isEmpty) {
              return const Center(child: ListTile(title: Text('No Movies Found')));
            }
        
            return    Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               const MainTitle(
                title:"  Top 10 TV Shows in india Today"),
                KHeight,
               LimitedBox(
                maxHeight: 200,
                child: ListView(
            scrollDirection: Axis.horizontal,
            children:List.generate(10, (index) => NumberCard(index: index,imageUrl: imageList[index],))
            
            ,
                ),
               )
                ],
              );
          
        
      
  }
}