import 'package:drawer/components/profile_components/account_info.dart';
import 'package:drawer/components/profile_components/highlights_product_section.dart';
import 'package:drawer/components/profile_components/logout_section.dart';
import 'package:drawer/components/profile_components/navigation_profile.dart';
import 'package:drawer/components/profile_components/setting_section.dart';
import 'package:drawer/components/profile_components/shop_section.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              NavigationProfile(),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                      ),
                    color: colorNeutral,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 15, bottom: 25, left: 15, right: 15),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: AccountInfo(),
                        ),
                        Container(
                          height: 1,
                          decoration: BoxDecoration(
                            color: colorNeutral2,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: ShopSection()),
                        Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: HighlightProductSection()),
                        Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 15),
                            child: SettingSection()),
                        LogoutSection(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
