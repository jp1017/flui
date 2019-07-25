import 'package:example/bubble.dart';
import 'package:example/bubble_menu.dart';
import 'package:example/copyable_label.dart';
import 'package:example/loading_button.dart';
import 'package:example/marquee_label.dart';
import 'package:example/pin_input.dart';
import 'package:example/primary_color_override.dart';
import 'package:example/raised_button.dart';
import 'package:example/toast.dart';
import 'package:example/style/style.dart';
import 'package:example/widget_page.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() => runApp(MyApp());

Logger logger = Logger();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FLToastDefaults defaults = FLToastDefaults(style: FLToastStyle.dark);
    return FLToastProvider(
      defaults: defaults,
      child: MaterialApp(
        title: 'FLUI',
        theme: ThemeData(
            primarySwatch: FLColors.primarySwatch,
            buttonTheme: ButtonThemeData(
                colorScheme: ColorScheme.fromSwatch(primarySwatch: FLColors.primarySwatch)
            )
        ),
        routes: {
          MyHomePage.routeName: (context) => MyHomePage(),
          WidgetPage.routeName: (context) => WidgetPage()
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String routeName = '/';

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                    SizedBox(height: 20),
                    FLRaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, WidgetPage.routeName);
                      },
                      child: Text('widget page'),
                  )
                ]
            )
          )
      )
    );
  }
}
