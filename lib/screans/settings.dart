import 'package:flutter/material.dart';
import 'package:online_pharmacy/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
        
          SwitchListTile(
            title: Text('Enable Dark Mode'),
            value: _darkModeEnabled,
            onChanged: (bool value) {
              setState(() {
                _darkModeEnabled = value;
                themeProvider.setThemeData(
                  _darkModeEnabled
                      ? ThemeData.dark().copyWith(
                          scaffoldBackgroundColor: Color(0xFF212332),
                          cardColor: Color(0xFF2A2D3E),
                        )
                      : ThemeData.light().copyWith(
                          scaffoldBackgroundColor: Color(0xFFE9E9E6),
                          cardColor: Color(0xFFFFFFFF),
                        ),
                );
              });
            },
          ),
       
        ],
      ),
    );
  }
}
