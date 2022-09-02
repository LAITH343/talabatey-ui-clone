import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showpromo = false;
  TextEditingController? name;
  TextEditingController? phone_number;
  TextEditingController? sub_code;
  int name_word_count = 0;
  int phone_word_count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoWidget(context),
                  Name_TextFiled(),
                  Phone_number_textfield(),
                  Sub_Code_Text(),
                  if (showpromo) Sub_Code_textfield(),
                  Next_Button()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding Next_Button() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Container(
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "التالي",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding Sub_Code_textfield() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xfff5f3f0),
        ),
        child: TextField(
          controller: sub_code,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
              label: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "رمز المشاركة",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: InputBorder.none),
        ),
      ),
    );
  }

  Padding Sub_Code_Text() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: () {
          setState(() {
            showpromo = !(showpromo);
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              showpromo == false ? Icons.arrow_left : Icons.arrow_drop_down,
              color: Colors.red,
              size: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "أذا كان لديك رمز مشاركه, أضغط هنا",
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding LogoWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/logo.png"), fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }

  Padding Phone_number_textfield() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xfff5f3f0),
        ),
        child: TextField(
          onChanged: ((value) {
            setState(() {
              phone_word_count = value.length;
            });
          }),
          textDirection: TextDirection.rtl,
          controller: phone_number,
          maxLength: 11,
          decoration: InputDecoration(
              counterText: "",
              label: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$phone_word_count/11",
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "رقم الهاتف",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: InputBorder.none),
        ),
      ),
    );
  }

  Padding Name_TextFiled() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xfff5f3f0),
        ),
        child: TextField(
          maxLength: 15,
          textDirection: TextDirection.rtl,
          controller: name,
          onChanged: (val) {
            setState(() {
              name_word_count = val.length;
            });
          },
          decoration: InputDecoration(
              counterText: "",
              label: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$name_word_count/15",
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "الاسم",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
