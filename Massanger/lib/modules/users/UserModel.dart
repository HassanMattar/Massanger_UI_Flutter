import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user/user.dart';




class UserModel extends StatelessWidget {
  @override
  List<UserModels> user = [
    UserModels(id: 1, phone: 0552786445, name: 'Ahmed Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'Ahmed Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'zuher Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'mahmoud Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'Ahmed Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'Ahmed Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'zuher Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'mahmoud Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'Ahmed Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'Ahmed Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'zuher Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'mahmoud Mattar'),
    UserModels(id: 1, phone: 0552786445, name: 'Ahmed Mattar'),
  
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          centerTitle: true,
          title: Text(
            'User',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => row(user[index]),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(start: 15, top: 15),
                  child: Container(
                    color: Colors.grey,
                    height: 1,
                  ),
                ),
            itemCount: user.length));
  }

  Widget row(UserModels users) {
    return (Padding(
      padding: const EdgeInsetsDirectional.only(start: 10, top: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(
              '${users.id}',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('${users.name}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              SizedBox(
                height: 2,
              ),
              Text(
                '${users.phone}',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    ));
  }
}
