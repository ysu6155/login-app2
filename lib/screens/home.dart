import 'package:flutter/material.dart';

import '../widgets/Socialmedia.dart';
import '../widgets/tixtform.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.network("https://f.top4top.io/p_3274yx2ld1.png",height: 300,width: 300,),
              SizedBox(
                height: 15,
              ),
              chesterfield(Foergetpassword: true,flex: 1,width: 38,textchek: "Remember me",namebutton: "Login",),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // الخط الأيسر
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 2,
                      endIndent: 10, // المسافة بين النص والخط
                    ),
                  ),

                  // النص في المنتصف
                  Text(
                    "  Enter social networks   ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),

                  // الخط الأيمن
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 2,
                      indent: 10, // المسافة بين النص والخط
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SocialNetworks(),


            ],
          ),
        ),
      ),
    );
  }
}
