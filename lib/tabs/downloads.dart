import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      floatingActionButton: FlatButton(
        textColor: Colors.white,
        color: Colors.black.withAlpha(150),
        child: Text(
          'Find More to Download',
        ),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        leading: Icon(Icons.info_outline),
        centerTitle: false,
        title: Text(
          'Smart Downloads OFF',
          style:TextStyle(
            fontFamily:'Montserrat',
            fontSize:15.0
          )
        ),
        backgroundColor: Colors.black87,
        actions: <Widget>[
          Icon(Icons.edit)
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        color: Colors.black87,
        child:Column(
        children: <Widget>[
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
            width:40,
            height:40,
            child:Image.asset('assets/images/nk.jpg')
            ),
            Text(
              'Akshara',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16.0,
                color: Colors.white
              ),
            )
          ],),
          SizedBox(height: 10,width: double.infinity,),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.all(0),
              width:200,
              height: 80,
              child: Image.asset('assets/images/narcos.jpg'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Narcos',
                  style:TextStyle(
                    color:Colors.white
                  )
                ),
                SizedBox(height: 5.0,),
                Text(
                  '5 Episodes | 679MB',
                  style:TextStyle(
                    color:Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w200
                  )
                )
              ],
            ),
            SizedBox(width: 30,),
            new Center(
              child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
            )
          ],),
          SizedBox(height: 20,width: double.infinity,),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.all(0),
              width:200,
              height: 80,
              child: Image.asset('assets/images/b99.jpg'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Brooklyn Nine Nine',
                  style:TextStyle(
                    color:Colors.white
                  )
                ),
                SizedBox(height: 5.0,),
                Text(
                  '13+ | 2.1 GB',
                  style:TextStyle(
                    color:Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w200
                  )
                )
              ],
            ),
            SizedBox(width: 25,),
            new Center(
              child: Icon(Icons.phone_android,color: Colors.blue,size:30),
            )
          ],)
        ],
      ),
      )
    );
  }
}