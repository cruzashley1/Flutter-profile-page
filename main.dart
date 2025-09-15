import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'My Profile App',
      theme: ThemeData(
      ),
      home: ProfilePage(),
    );
  }
}


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            //profile Picture
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape:BoxShape.circle,
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0,5)
                  )
                ],
              ),
              child: ClipOval(
                  child: Image.network('https://lh3.googleusercontent.com/a/ACg8ocL82OEWJyVALWgHZk7B5hv8JWVn72MxGh0_3rEQi_7lYHwD3ind=s288-c-no',
                    width:150,
                    height: 150,
                    fit: BoxFit.cover,)
              ),
            ),
            //NAME
            SizedBox(height: 20),
            Text('Cruz, Ashley Eunice V.',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color:Colors.black87,
              ),
            ),


            //About me Section

            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0,3)

                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Me',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Hi! I’m Ashley Eunice Cruz, a it 3rd year it student from Global Reciprocal Colleges. I am curious about computer and I would like to learn more in IT industry.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),

                ],
              ),


            )

          ],
        ),
      ),
    );
  }
}
