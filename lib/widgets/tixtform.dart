import 'package:flutter/material.dart';

class chesterfield extends StatefulWidget {
  bool? Foergetpassword;
  String namebutton;
  String textchek;
  double width;
  int flex;
  chesterfield({super.key ,required this.Foergetpassword,required this.namebutton,required this.textchek,required this.flex,required this.width});

  @override
  State<chesterfield> createState() => _chesterfieldState();
}

class _chesterfieldState extends State<chesterfield> {

  TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  bool isPasswordVisible = false;

  bool isOption1Selected = false;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                    width: 2,
                  ),
                ),
                labelText: "البريد الإلكتروني",
                labelStyle: TextStyle(color: Colors.white),
                hintText: "example@mail.com",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email,color: Colors.white,),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "الرجاء إدخال البريد الإلكتروني";
                } else if (!RegExp(r"^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$")
                    .hasMatch(value)) {
                  return "البريد الإلكتروني غير صحيح";
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(

              controller: password,
              obscureText: !isPasswordVisible, // إخفاء كلمة المرور
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                  ),
                labelText: "كلمة المرور",
                hintText: "أدخل كلمة المرور",
                labelStyle: TextStyle(color: Colors.white),
                hintStyle:  TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock,color: Colors.white,),
                suffixIcon: IconButton(
                  icon:isPasswordVisible ?  Icon(Icons.visibility,color: Colors.white,):Icon( Icons.visibility_off,color: Colors.white,),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "الرجاء إدخال كلمة المرور";
                } else if (value.length < 8) {
                  return "يجب أن تكون كلمة المرور 8 أحرف على الأقل";
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CheckboxListTile(
                    hoverColor: Colors.white,
                    value: isOption1Selected,
                    checkColor: Colors.white,
                     onChanged: (bool? value) {
                      setState(() {
                        isOption1Selected = value ?? false;
                      });
                    },
                  ),
                ),
                Expanded(
                    flex: widget.flex,
                    child: Text(widget.textchek,style: TextStyle(color: Colors.white),)),
                SizedBox(
                  width: widget.width,
                ),
                if(widget.Foergetpassword!)

                  TextButton(onPressed: () {}, child: Text("Foerget password?",style:TextStyle(color: Colors.blue),))
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)), // إلغاء الحواف
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("تم التحقق بنجاح!"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                },
                child: Text(widget.namebutton,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
