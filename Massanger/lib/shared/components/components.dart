import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buttonDefult({
  @required double width = double.infinity,
  @required Color? color,
  @required String? text,
  @required onPressed,
  @required double radius = 0,
}) {
  return Container(
    width: width,
    height: 40,
    child: MaterialButton(
      onPressed: onPressed,
      
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.circular(radius)),
  );
}

Widget formFialedDefulte({
  bool ispassword = false,
  @required Icon? preIcon,
  IconButton? sufIcon,
  @required String? lable,
  @required String? validator,
  @required TextInputType? type,
  @required TextEditingController? conroller,
}) {
  return TextFormField(
    controller: conroller,
    obscureText: ispassword,
    keyboardType: TextInputType.emailAddress,
    validator: (var word) {
      if (word!.isEmpty) return validator;
      return null;
    },
    onFieldSubmitted: (value) {
      print(value);
    },
    decoration: InputDecoration(
      prefixIcon: preIcon,
      border: OutlineInputBorder(),
      suffixIcon: sufIcon,
      labelText: lable,
    ),
  );
}
