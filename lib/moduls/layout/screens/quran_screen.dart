import 'package:flutter/material.dart';
import 'package:islami_4pm/moduls/layout/widgets/surah_name_widget.dart';

class QuranScreen extends StatelessWidget {
  QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/qur2an_screen_logo.png"),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text("Surah Name",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge!.copyWith(fontSize: 25))),
            SizedBox(
              height: 35,
              child: VerticalDivider(),
            ),
            Expanded(
                child: Text("Verses Number",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge!.copyWith(fontSize: 25))),
          ],
        ),
        Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SurahNameWidget(index: index);
            },
            itemCount: 114,
          ),
        )
      ],
    );
  }
}
