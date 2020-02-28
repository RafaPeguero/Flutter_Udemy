import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/proxy/i69JvvJoEFdAqRivLiNA516ZX-yMDmAMgWD5v8ZjWBsTAqtsw6gDD1Nl12U1DnqvZQyFhPOwSpBUE5c4P-0_vQtXrwlfQZXUAVuP3eYd_Mw'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('PG'),
              backgroundColor: Colors.red,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),  
          image: NetworkImage('https://lh3.googleusercontent.com/proxy/MkZHFUn90U4PtaYKUKHFevRACcb7aWbq6F43u0qJvF7NHoW_xIzBLn56QtgVbIbtAr6JcjuiF_4zFrKQ7r6TVxAz-2mgX_quAVMe_m9mAkNqgKWCs8LygiHNnhlrb6oNTNo5N33Uy8DISvanYTI6bUJn1duSKctwtnKjG18Xjq8'),
          fadeInDuration: Duration(milliseconds: 200),
          )
          
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}