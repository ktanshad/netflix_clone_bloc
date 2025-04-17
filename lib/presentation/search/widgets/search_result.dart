import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';


class SearchResultWidget extends StatefulWidget {
   SearchResultWidget({super.key});

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies & TV"),
        KHeight,
        Expanded(child:   GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1/1.4,
              children:List.generate(10, (index){
              String imageUrl = 'https://img.download.io/media/785/ios//netflix/13-12-0/netflix-9351.jpg';
              return MainCard(imageUrl: imageUrl);
              }),)
        
         
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
   MainCard({super.key,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(imageUrl),
        fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}