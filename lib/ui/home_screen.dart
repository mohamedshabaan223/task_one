import 'package:flutter/material.dart';
import 'package:task_one/confg/colors_manger.dart';
import 'package:task_one/tabs/home_tab/home_tab.dart';
import 'package:task_one/tabs/setting_tab/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs =[
HomeTab(),
SettingTab(),
  ];
  int currentIndex =0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/pexels-shotbyrain-3934623.jpg'),
        fit: BoxFit.cover),
      ),
      child: Scaffold(
         backgroundColor: Colors.transparent,
           appBar: AppBar(
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back ,color: ColorsManger.white, size: 30,)),
              centerTitle: true,
              title: 
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Todo' , style: TextStyle(color: ColorsManger.white , fontSize: 26 , fontWeight: FontWeight.w700),),
                  Text('App' , style: TextStyle(color: ColorsManger.red , fontSize: 26 , fontWeight: FontWeight.w700),),
                ],),
              
              backgroundColor: ColorsManger.black,
              actions: [IconButton(onPressed: (){},
               icon: Icon(Icons.search , color: ColorsManger.white, size: 30,)),
               IconButton(onPressed: (){},
               icon: Icon(Icons.settings_outlined , color: ColorsManger.white, size: 30,))],
              
            ),
           body: tabs[currentIndex],
         
             
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                currentIndex = value;
                setState(() {
                  
                });
              },
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: ColorsManger.white,
              selectedItemColor: ColorsManger.red,
              backgroundColor: ColorsManger.black,
              items: [
                 BottomNavigationBarItem(icon: Icon(Icons.home ,  size: 30,), 
                 label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.settings ,  size: 30,), 
                 label: 'setting')
            ]),
          
        
      ),
    );
  }
}