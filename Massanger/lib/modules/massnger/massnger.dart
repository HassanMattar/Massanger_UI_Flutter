import 'package:flutter/material.dart';
class Massnger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
         leading : CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNbeIGbe6Br9FREUia1mTdQ7IxwSd2prlRzA&usqp=CAU'),
              ),
           
           title:    Text(
                'Chat',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            
       
          actions: [
            CircleAvatar(
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.camera_alt_rounded))),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.edit))),
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[350],
                        //BoxDecoration(borderRadius: BorderRadius.circular(33)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'search',
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                        itemBuilder: (context, index) {
                          return ConectList();
                        },
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) =>  ChatList(),

                        separatorBuilder: (context,index)=>SizedBox(height: 10,),
                        itemCount: 15)
                  ],
                ),
              ),
            )));
  }
}

Widget ChatList() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNbeIGbe6Br9FREUia1mTdQ7IxwSd2prlRzA&usqp=CAU',
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 5, end: 5),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 8,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.green,
                  )),
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'mahmoud dss ttesw',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'vgd fedsdd effb erw Expanded Expanded Expanded Expanded Expanded Expanded Expanded Expandedgeb v4edsss reww ewwww www',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    // color: Colors.blue,
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                  ),
                  Text('10.55 pm')
                ],
              )
            ],
          ),
        )
      ],
    );

Widget ConectList() => Container(
      width: 60,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 6, bottom: 6),
        child: Expanded(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNbeIGbe6Br9FREUia1mTdQ7IxwSd2prlRzA&usqp=CAU',
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.green,
                        )),
                  )
                ],
              ),
              Text(
                'Hassan abd El Hamid Mattar',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
 