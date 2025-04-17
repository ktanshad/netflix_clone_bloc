
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"
];

class VideoListItem extends StatefulWidget {
  final int index;
 VideoListItem({super.key, required this.index});

  @override
  State<VideoListItem> createState() => _VideoListItemState();
  
}

class _VideoListItemState extends State<VideoListItem> {

  @override
  Widget build(BuildContext context) {
     
      
        return Stack(
        children: [
          Container(
            color: Colors.accents[widget.index % Colors.accents.length],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
      
                  
    
                  ///left side
                 CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    radius: 30,
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.volume_off,
                        color: KWhiteColor,
                        size: 30,
                      ),
                    ),
                  ),
    
                ///right side
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage( 
                         'https://img.download.io/media/785/ios//netflix/13-12-0/netflix-9351.jpg',
                        ),
                      ),
                    ),
                    VideoActionsWidget(icon: Icons.emoji_emotions, title:"LOL"),
                     VideoActionsWidget(icon: Icons.add, title:"My List"),
                     VideoActionsWidget(icon: Icons.share, title:"Share"),
                      VideoActionsWidget(icon: Icons.play_arrow, title:"Play"),
                  ],
                )
              ],
            ),
          )
        ],
      );
      
       
    
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,color: Colors.white,size: 30,),
          Text(title,style: const TextStyle(
            color: KWhiteColor,fontSize: 16
          ),)
        ],
      ),
    );
  }
}
