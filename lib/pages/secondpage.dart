import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> majors = ["Computer Science", "Information Technology"];
  String selectedMajor = "";
  List<String> languages = ["Thai", "English", "Chinese"];
  String selectedLanguage = "";
  bool Checkterms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            child: Text(
              "Major",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: majors.map((major) {
              return ChoiceChip(
                label: Text(major),
                selected: selectedMajor == major,
                onSelected: (bool selected) {
                  setState(() {
                    selectedMajor = selected ? major : "";
                  });
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Language",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Column(
            children: languages.map((language) {
              return RadioListTile<String>(
                title: Text(language),
                value: language,
                groupValue: selectedLanguage,
                onChanged: (value) {
                  setState(() {
                    selectedLanguage = value!;
                  });
                },
              );
            }).toList(),
          ),
          ListTile(
            leading: Checkbox(
              value: Checkterms,
              onChanged: (value) {
                setState(() {
                  Checkterms = value!;
                });
              },
            ),
            title: Text("Agree Condition Terms"),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Text("Register",style: TextStyle(fontSize: 23),),
          )
        ],
      ),
    );
  }
}