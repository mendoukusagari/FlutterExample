import 'package:drawer/cubit/app_cubit.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ToolList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations app = AppLocalizations.of(context);
    return Container(
      decoration: BoxDecoration(
        color: colorNeutral,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                app.home_page_services_title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: GridView.builder(
                  primary: false,
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                  ),
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: colorNeutral,
                      ),
                      child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: NetworkImage(
                                      "https://cdn.iconscout.com/icon/free/png-256/idea-bulb-creativity-creative-light-energy-1-4143.png"),
                                  width:
                                      MediaQuery.of(context).size.width / 8.8,
                                  height:
                                      MediaQuery.of(context).size.width / 8.8,
                                ),
                                Expanded(
                                  child: Text(
                                    "Income",
                                    style: TextStyle(fontSize: 10),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            context.read<AppCubit>().home();
                            print(context.read<AppCubit>().state);
                          }),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
