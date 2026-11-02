import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
 runApp(MyApp());
}
class MyApp extends StatefulWidget { 
const MyApp({super.key});

@override

State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
   bool showPassword = true;
   final passwordController = TextEditingController();

@override
Widget build(BuildContext context) {
return GetMaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text("Whatsapp"),
backgroundColor: Colors.greenAccent,
), // AppBar
body: Container(
height: double.infinity,
width: double.infinity,
decoration: BoxDecoration(
gradient: LinearGradient(
colors:[
Colors.purple,Colors.blue
],
)// LinearGradient
),//BoxDecoration

child: ElevatedButton{
onPressed: (){
},

style: ElevatedButton.styleFrom( 
   backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent
),