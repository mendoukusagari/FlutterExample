import 'package:drawer/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BannerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations app = AppLocalizations.of(context);
    return Container(
        decoration: BoxDecoration(
          color: colorNeutral,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              child: Image(
                  image: AssetImage("assets/image/main_banner_2.png"),
                  fit: BoxFit.fitWidth
                ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            Positioned.fill(
              child: Container(
                width: double.infinity,
                decoration: new BoxDecoration(
                  color: colorPrimary.withOpacity(0.25),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            app.home_page_greetings,
                            style: TextStyle(
                              fontFamily: "FreeHand521",
                              color: colorNeutral,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "Dhiaz!",
                            style: TextStyle(
                              color: colorNeutral,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        app.home_page_notifications,
                        style: TextStyle(
                          color: colorNeutral,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
