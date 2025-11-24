import 'package:flutter/material.dart';
import 'package:task_one/confg/colors_manger.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(child: Text('Home' , style: TextStyle(color: ColorsManger.white , fontSize: 30 , fontWeight: FontWeight.w700),),);
  }
}