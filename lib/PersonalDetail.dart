import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  String fname = "";
  String lname = "";
  String mobilenumber = "";
  List Date = [];
  String date = "1";
  List Month = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  String month = "January";
  List Year = [];
  String year = "2023";
  String male = "male";
  String gender = "male";
  TextEditingController txtfirstname = TextEditingController();
  TextEditingController txtlastname = TextEditingController();
  TextEditingController txtmobilenumber = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtaddress = TextEditingController();
  List Age = [];
  String age = "20";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 1; i <= 31; i++) {
      Date.add("$i");
    }
    for (int i = 1920; i <= 2023; i++) {
      Year.add("$i");
    }
    for (int i = 10; i <= 80; i++) {
      Age.add("$i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Personal Information",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          fname = txtfirstname.text;
                          lname = txtlastname.text;
                          mobilenumber = "";
                          date = "1";
                          month = "January";
                          year = "2023";
                          male = "male";
                          gender = "male";
                        });
                      },
                      child: Icon(
                        Icons.refresh,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextField(
                          controller: txtfirstname,
                          decoration: InputDecoration(
                            hintText: "Enter Name",
                            label: Text("First Name"),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        child: TextField(
                          controller: txtlastname,
                          decoration: InputDecoration(
                            hintText: "Enter Last Name",
                            label: Text("Last name"),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "DOB :- ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      itemHeight: 50,
                      borderRadius: BorderRadius.circular(20),
                      items: Date.asMap()
                          .entries
                          .map((e) => DropdownMenuItem(
                                child: Text("${Date[e.key]}"),
                                value: "${Date[e.key]}",
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          date = value!;
                        });
                      },
                      value: "$date",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton(
                      borderRadius: BorderRadius.circular(20),
                      itemHeight: 50,
                      items: Month.asMap()
                          .entries
                          .map((e) => DropdownMenuItem(
                                child: Text("${Month[e.key]}"),
                                value: "${Month[e.key]}",
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          month = value!;
                        });
                      },
                      value: "$month",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton(
                      itemHeight: 50,
                      borderRadius: BorderRadius.circular(20),
                      items: Year.asMap()
                          .entries
                          .map((e) => DropdownMenuItem(
                                child: Text("${Year[e.key]}"),
                                value: "${Year[e.key]}",
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          year = value!;
                        });
                      },
                      value: "$year",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Gender :- ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Radio(
                      value: "male",
                      groupValue: "$gender",
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text("Male"),
                    SizedBox(
                      width: 20,
                    ),
                    Radio(
                      value: "female",
                      groupValue: "$gender",
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text("Female"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Age :- ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      itemHeight: 50,
                      borderRadius: BorderRadius.circular(20),
                      items: Age.asMap()
                          .entries
                          .map((e) => DropdownMenuItem(
                                child: Text("${Age[e.key]}"),
                                value: "${Age[e.key]}",
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          age = value!;
                        });
                      },
                      value: "$age",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtmobilenumber,
                  decoration: InputDecoration(
                    hintText: "Enter Mobile Number",
                    label: Text("Mobile Number"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtemail,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    label: Text("Email"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtaddress,
                  decoration: InputDecoration(
                    hintText: "Enter Address",
                    label: Text("Address"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'family');
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
