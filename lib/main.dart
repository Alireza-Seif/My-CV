import 'package:cv_application/widget/appbar_x.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'vazir',
      ),
      home: Scaffold(
        appBar: getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          const SizedBox(height: 20),
          _getMainContent(),
          const SizedBox(height: 12),
          _getRowIcons(),
          const SizedBox(height: 12),
          _getSkillCards(),
          const SizedBox(height: 12),
          _getResume(),
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return const Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/me_01.jpg'),
          radius: 70,
        ),
        SizedBox(height: 15),
        Text(
          'علیراضاام یه برنامه نویس',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 15),
        Text(
          'عاشق برنامه‌یسی موبایل با فلاترم که دوست دارم  هرچیزی که یادمیگیرم رو یادبدم',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _getRowIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.linkedin,
            color: Color(0xFF0077B5),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.squareInstagram,
            color: Colors.redAccent,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.telegram,
              color: Color(
                0xFF0088cc,
              )),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.squareGithub,
            color: Color(0xFF171515),
          ),
        ),
      ],
    );
  }

  Widget _getSkillCards() {
    List<String> titleList = [
      'dart',
      'flutter',
      'android',
    ];

    return Wrap(
      spacing: 10,
      children: [
        for (var skill in titleList)
          Card(
            elevation: 10,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage(
                      'assets/images/$skill.png',
                    ),
                    width: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(skill.toUpperCase()),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getResume() {
    List<String> jobTitle = [
      'برنامه نویس فلاتر ماندی از سال 99',
      'برنماه نویس فلاتر آنلاین تعویض در سال 99',
      'برنامه نویس فلاتر گوشه‌دنج در سال 1402'
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.infinity,
      color: Colors.grey[100],
      child: Column(
        children: [
          const Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 10,
              ),
              for (var title in jobTitle)
                Text(
                  title,
                  textDirection: TextDirection.rtl,
                )
            ],
          ),
        ],
      ),
    );
  }
}
