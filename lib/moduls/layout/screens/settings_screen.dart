import 'package:flutter/material.dart';
import 'package:islami_4pm/core/thems/themes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            showLangSheet(context);
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: AppTheme.yellowLightColor,
                width: 2
              )
            ),
            child: Text("English"),
          ),
        ),
        InkWell(
          onTap: () {
            showThemeSheet(context);
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: AppTheme.yellowLightColor,
                width: 2
              )
            ),
            child: Text("Light"),
          ),
        ),
      ],
    );
  }
  showLangSheet(BuildContext context){
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
      constraints: BoxConstraints(
        maxHeight: size.height * 0.4,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      showDragHandle: true,
      context: context, builder: (context) {
      return Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: AppTheme.yellowLightColor,
                      width: 2
                  )
              ),
              child: Text("English"),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: AppTheme.yellowLightColor,
                      width: 2
                  )
              ),
              child: Text("العربية"),
            ),
          ],
        ),
      );
    },);
  }
  showThemeSheet(BuildContext context){
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
      constraints: BoxConstraints(
        maxHeight: size.height * 0.4,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      showDragHandle: true,
      context: context, builder: (context) {
      return Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: AppTheme.yellowLightColor,
                      width: 2
                  )
              ),
              child: Text("Dark"),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: AppTheme.yellowLightColor,
                      width: 2
                  )
              ),
              child: Text("Light"),
            ),
          ],
        ),
      );
    },);
  }
}
