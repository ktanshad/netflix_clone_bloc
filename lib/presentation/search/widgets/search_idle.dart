import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';


class SearchIdleWidget extends StatefulWidget {
  const SearchIdleWidget({super.key});

  @override
  State<SearchIdleWidget> createState() => _SearchIdleWidgetState();
}

class _SearchIdleWidgetState extends State<SearchIdleWidget> {
 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(
          title: "Top Searches",
        ),
        KHeight,
        Expanded(
          child:ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    TopSearchItemTile(),
                separatorBuilder: (context, index) => KHeight20,
                itemCount: 2,
              )
           
        
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {

  const TopSearchItemTile({super.key,});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://img.download.io/media/785/ios//netflix/13-12-0/netflix-9351.jpg"))),
        ),
        KWidth,
        Expanded(
          child: Text(
           "No Movie Name Found",
            style: const TextStyle(
                color: KWhiteColor, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const CircleAvatar(
          backgroundColor: KWhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: KWhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
