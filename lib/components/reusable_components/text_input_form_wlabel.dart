import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextInputFormWLabel extends StatelessWidget{
  final String label, placeholder, value;
  final Function onSaved;
  bool obscureText = false;

  TextInputFormWLabel(this.label,this.placeholder,this.onSaved,[this.value='',this.obscureText = false]);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations app = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyle(
              fontSize: 12,
            )),
        SizedBox(height: 2),
        SizedBox(
          child: TextFormField(
            initialValue: value,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              labelText: placeholder,
            ),
            obscureText: obscureText,
            style: TextStyle(fontSize: 14),
            validator: (value){
              if (value==null || value.isEmpty){
                return "$label ${app.validation_not_empty}";
              }
              return null;
            },
            onSaved: (value)=>onSaved(value),
          ),
        ),
      ],
    );
  }
  
}