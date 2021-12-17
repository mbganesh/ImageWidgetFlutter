import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String src =
        "https://images.unsplash.com/photo-1639097989504-083150303bdd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80";

    final String src2 =
        "https://images.unsplash.com/photo-1433162653888-a571db5ccccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80";

    final image1 = "assets/image1.jpg";

    final image2 = "assets/image2.jpg";

    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
      ),
      body: ListView(
        children: [
          // Image from Network:

          Image.network(
            src,
            height: 150,
            width: 150,
          ),

          SizedBox(
            height: 20,
          ),

          Image.network(src2),

          // Avatar Image
          SizedBox(
            height: 20,
          ),

          CircleAvatar(
            child: ClipOval(
              child: Image.network(
                src2,
                fit: BoxFit.cover,
              ),
            ),
            radius: 100,
          ),

          // Assets Image
          SizedBox(
            height: 20,
          ),

          Image.asset(
            image1,
            height: 400,
            width: 250,
            fit: BoxFit.cover,
          ),

          CircleAvatar(
            child: ClipOval(
              child: Image.asset(image2 , fit: BoxFit.fill,),
            ),
            radius: 100,
          )
        ],
      ),
    );
  }
}
