import 'package:flutter/material.dart';
import 'package:task_one/confg/colors_manger.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Setting' , style: TextStyle(color: ColorsManger.white , fontSize: 30 , fontWeight: FontWeight.w700),),);
  }
}