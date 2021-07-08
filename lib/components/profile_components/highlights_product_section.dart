import 'package:drawer/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HighlightProductSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 5),
            child: Text(
              AppLocalizations.of(context).profile_page_highlight_product_title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: index == 0
                      ? InkWell(
                          child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: colorNeutral,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: colorPrimary,
                                  size: 24,
                                ),
                                Text(
                                  "Add",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: null,
                        )
                      : InkWell(
                          child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: colorPrimary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
