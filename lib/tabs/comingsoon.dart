import 'package:flutter/material.dart';

class ComingSoonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        children: <Widget>[
          itemCont(context,'Cricket Fever: Mumbai Indians','Coming 20 November','Follow Indian Premier League champions Mumbai Indians through the 2018 season in this series featuring insider insights and intense cricket action.'
          ,'assets/images/mi.jpg','Social • Cultural • Documentary • Cricket'),
          itemCont(context,'Lost in Space','Coming 25 December',
          'After crash-landing on an alien planet, the Robinson family fights against all odds to survive and escape. But they\'re surrounded by hidden dangers.'
          ,'assets/images/los.jpg','Action • Adventure • Space • Extraterrestrial'),
          itemCont(context,'Travelers','Coming 4 January',
          'A federal agent tracks four people who suddenly seem to possess entirely new personalities, leading to a startling discovery about humanity\'s future.'
          ,'assets/images/apollo.jpg','Sci-Fi • Adventure • Fantasy'),
        ],
      ),
    );
  }

  Container itemCont(BuildContext context,String name,String arriving,String desp,String image,String tags) {
    return Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(image),
              SizedBox(width: double.infinity,height: 20,),
              Row(
                 children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left:15,top:10),
                    width: (MediaQuery.of(context).size.width/2),
                    height: 40.0,
                    child: Text(
                      arriving,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left:15),
                    width: (MediaQuery.of(context).size.width/2),
                    height: 40.0,
                    child: FlatButton(
                      onPressed: (){},
                      child: Container(
                        
                        width:120,
                        height: 30,
                        decoration: BoxDecoration(
                          color:Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          
                          Icon(Icons.notifications_active,color:Colors.white,size:18),
                          Text('Remind Me' ,style: TextStyle(color:Colors.white),)
                        ],)
                      ),
                    )
                  ),
                ],
              ),
              SizedBox(height: 10,)
              ,
              Row(
                children: <Widget>[
                  SizedBox(width: 10,height: 10,),
                  Text(
                name,
                style:TextStyle(
                  color:Colors.white,
                  fontSize:20,
                ),
              )
                ],
              )
              ,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(

                    fit: FlexFit.loose,
                    child: 
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        desp
                      ,style: TextStyle(
                        color: Colors.white54,
                        fontSize: 10,
                        fontWeight: FontWeight.w100
                      ),
                    ),
                    )
                    
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                   tags, textAlign: TextAlign.center,
                    style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 12
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,)
            ],
          ),
        );
  }
}