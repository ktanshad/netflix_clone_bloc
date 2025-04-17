
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';


ValueNotifier<bool> scrolNotifier=ValueNotifier(false);
class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
 


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable:scrolNotifier,
        builder: (context, value, child) {
          return 
        
        NotificationListener<UserScrollNotification>(
              onNotification: (Notification) {
                final ScrollDirection direction = Notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrolNotifier.value=false;
                } else if (direction == ScrollDirection.forward) {
                    scrolNotifier.value=true;
                }
                return true;
              },
              
              child: Stack(
                children: [
                  ListView(
                    children: const[
                        BackgroundCard(),
                         KHeight,
                      NumberTitleCard(),
                      KHeight,
                      MainTitleCard(
                        title: "New Releases",
                      
                      ),
                      KHeight,
                      MainTitleCard(
                        title: "Trending Now",
                       
                      ),
                      KHeight,
                      MainTitleCard(
                        title: "Popular Shows",
                      
                      ),
                      KHeight,
                      MainTitleCard(
                        title: "Upcoming",
                        
                      )
                    ],
                  ),
                      scrolNotifier.value== true
                      ? AnimatedContainer(
                           
                          duration: const Duration(milliseconds: 100),
                          width: double.infinity,
                          height: 80,
                          
                          color: Colors.black.withOpacity(0.6),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Netflix_2015_N_logo.svg/640px-Netflix_2015_N_logo.svg.png",
                                    width: 40,
                                    height: 40,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  KWidth,
                                  SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/avatar.png"),
                                  ),
                                  KWidth
                                ],
                              ),
                              KHeight,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Shows",
                                    style: kHomeTitleText,
                                  ),
                                  Text("Movies", style: kHomeTitleText),
                                  Text("Categories", style: kHomeTitleText)
                                ],
                              ),
                            ],
                          ),
                        )
                      : KHeight,
                  
                ],
              ),
              
            );
            },
            
      )
          
         
        );
  }
}
