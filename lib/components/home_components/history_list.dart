import 'package:drawer/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HistoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations app = AppLocalizations.of(context);
    return Container(
      decoration: BoxDecoration(color: colorNeutral),
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                app.home_page_history_title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 320),
              child: ListView.builder(
                primary: false,
                padding: EdgeInsets.only(left: 10, right: 10),
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          width: 8,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            color: colorPrimary,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 10, bottom: 10, right: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Icon(
                                    Icons.attach_money_outlined,
                                    color: colorPrimary,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "System",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "You have been successfull install drawer",
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: colorNeutral,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10),
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
