import 'package:flutter/material.dart';

class SocialNetworks extends StatelessWidget {

  const SocialNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){},
                  child: Card(

                    clipBehavior:Clip.antiAlias,
                    elevation: 10,
                    semanticContainer: false,
                    color: Colors.indigo,
                    child: Image.network("https://cdn-icons-png.flaticon.com/128/145/145802.png",height: 90,width: 90,),

                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    clipBehavior:Clip.antiAlias,
                    elevation: 10,
                    semanticContainer: false,
                    color: Colors.white,
                    child: Image.network("https://cdn-icons-png.flaticon.com/128/281/281764.png",height: 90,width: 90,),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){},
                  child: Card(

                    clipBehavior:Clip.antiAlias,
                    elevation: 10,
                    semanticContainer: false,
                    color: Colors.black,
                    child: Image.network("https://cdn-icons-png.flaticon.com/128/5969/5969020.png",height: 90,width: 90,),

                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),

            ],
          ),
        ),

        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
