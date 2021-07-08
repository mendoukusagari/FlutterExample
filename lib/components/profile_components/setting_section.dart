import 'package:drawer/components/profile_components/setting_section_item.dart';
import 'package:drawer/page/change_language.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingSection extends StatelessWidget {
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
              AppLocalizations.of(context).profile_page_setting_title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                children: [
                  SettingSectionItem(
                      AppLocalizations.of(context).profile_page_setting_change_password, Icons.admin_panel_settings_sharp, (){}),
                  SettingSectionItem(
                      AppLocalizations.of(context).profile_page_setting_linking_account, Icons.admin_panel_settings_sharp, (){}),
                  SettingSectionItem(
                      AppLocalizations.of(context).profile_page_setting_tab_customization, Icons.admin_panel_settings_sharp, (){}),
                  SettingSectionItem(
                      AppLocalizations.of(context).profile_page_setting_membership, Icons.admin_panel_settings_sharp, (){}),
                  SettingSectionItem(
                      AppLocalizations.of(context).profile_page_setting_change_language, Icons.admin_panel_settings_sharp,(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeLanguagePage()));
                      }),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: colorNeutral,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
