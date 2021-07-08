import 'package:drawer/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations app = AppLocalizations.of(context);
    return Container(
      decoration: BoxDecoration(color: colorNeutral),
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                app.home_page_highlights_title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                primary: false,
                padding: EdgeInsets.only(left: 10),
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 300,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
                            fit: BoxFit.cover,
                            height: 300,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            color: colorPrimary.withOpacity(0.5),
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Title",
                                  style: TextStyle(
                                    color: colorNeutral,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Subtitle",
                                  style: TextStyle(
                                    color: colorNeutral,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
