import 'package:drawer/components/home_components/appbar.dart';
import 'package:drawer/components/home_components/banner.dart';
import 'package:drawer/components/home_components/bottom_navigation.dart';
import 'package:drawer/components/home_components/history_list.dart';
import 'package:drawer/components/home_components/news_list.dart';
import 'package:drawer/components/home_components/tool_list.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BannerHome(),
              ToolList(),
              Padding(padding: EdgeInsets.only(top: 10), child: NewsList()),
              Padding(padding: EdgeInsets.only(top: 10), child: HistoryList()),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 100),
                child: Center(
                  child: Image(
                      image: AssetImage("assets/image/banner.png"),
                      width: 100,
                      color: const Color.fromRGBO(255, 255, 255, 0.5),
                      colorBlendMode: BlendMode.modulate),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 10),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0,
          onPressed: () {},
          child: Container(
            height: 120,
            width: 120,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: colorPrimary),
            child: Icon(Icons.home_outlined, size: 25),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomeBottomNavigation(),
    );
  }
}
