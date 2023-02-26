import 'package:dark_light_button/dark_light_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dark_light_theme/core/theme/bloc/theme_bloc.dart';
import 'core/theme/app_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  DarlightButton(
            type: Darlights.DarlightThree,
            onChange: (itemAppTheme) {
              context
                  .read<ThemeBloc>()
                  .add(const ThemeChangedEvent(theme:AppTheme.Light));
            },

        )

      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(

            color: appThemeData[itemAppTheme]!.primaryColor,
            child: ListTile(

              title:
              Text(
                itemAppTheme.name,
                style: appThemeData[itemAppTheme]!.textTheme.titleMedium,
              ),

              onTap: () {
                context
                    .read<ThemeBloc>()
                    .add(ThemeChangedEvent(theme: itemAppTheme));
              },
            ),
          );
        },
      ),
    );
  }
}
