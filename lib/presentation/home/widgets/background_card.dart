import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/widgets/button_widget.dart';

class BackgroundCard extends StatefulWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  State<BackgroundCard> createState() => _BackgroundCardState();
}

class _BackgroundCardState extends State<BackgroundCard> {

 
   

  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height*0.7,
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("image not found"),
            ),
          ),
        ),
          const Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButtonWidget(icon: Icons.add,title: "My List",),
              PlayButton(),
              CustomButtonWidget(icon:Icons.info , title:"info")
            ],
          ),
        )
      ],
    );
  }
}