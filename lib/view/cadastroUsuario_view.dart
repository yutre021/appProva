import 'package:appprova/view/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../helpers/sliderightroute.dart';
import '../widget/title_widget.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {


  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Container(
        color: Colors.teal,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleWidget(icon: Icons.account_box, text: 'Register'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                controller: nameController,
                validator: (value) {
                  if(value==null) {
                    return 'Please enter your name';
                  } else {
                    // return EmailValidator.validate(value) ? null: 'Please fill with the valid email';
                  }
                },
                onChanged: (value) {},
                autocorrect: true,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  errorStyle: TextStyle(color: Color.fromARGB(255, 26, 255, 1)),
                  fillColor: Color.fromARGB(255, 0, 0, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 128, 255, 0), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 235, 235, 235), width: 1),
                  ),
                  labelText: 'Name',
                  hintText: 'Name',
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Icon(
                      Icons.account_box,
                      color: Color.fromARGB(255, 128, 255, 0),
                      size: 24,
                    ),
                  ),
                  labelStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  hintStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  filled: true,
                ),
                style: const TextStyle(
                    color: Color.fromARGB(255, 128, 255, 0), fontSize: 24.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                controller: phoneController,
                validator: (value) {
                  if(value==null) {
                    return 'Please enter your phone';
                  } else {
                    // return EmailValidator.validate(value) ? null: 'Please fill with the valid email';
                  }
                },
                onChanged: (value) {},
                autocorrect: true,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  errorStyle: TextStyle(color: Color.fromARGB(255, 26, 255, 1)),
                  fillColor: Color.fromARGB(255, 0, 0, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 128, 255, 0), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 235, 235, 235), width: 1),
                  ),
                  labelText: 'Phone',
                  hintText: 'Phone',
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 128, 255, 0),
                      size: 24,
                    ),
                  ),
                  labelStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  hintStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  filled: true,
                ),
                style: const TextStyle(
                    color: Color.fromARGB(255, 128, 255, 0), fontSize: 24.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                controller: emailController,
                validator: (value) {
                  if(value==null) {
                    return 'Please enter your email';
                  } else {
                    // return EmailValidator.validate(value) ? null: 'Please fill with the valid email';
                  }
                },
                onChanged: (value) {},
                autocorrect: true,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  errorStyle: TextStyle(color: Color.fromARGB(255, 26, 255, 1)),
                  fillColor: Color.fromARGB(255, 0, 0, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 128, 255, 0), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 235, 235, 235), width: 1),
                  ),
                  labelText: 'Email',
                  hintText: 'Email',
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 128, 255, 0),
                      size: 24,
                    ),
                  ),
                  labelStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  hintStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  filled: true,
                ),
                style: const TextStyle(
                    color: Color.fromARGB(255, 128, 255, 0), fontSize: 24.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {},
                autocorrect: true,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  errorStyle: TextStyle(color: Color.fromARGB(255, 26, 255, 1)),
                  fillColor: Color.fromARGB(255, 0, 0, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 128, 255, 0), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 235, 235, 235), width: 1),
                  ),
                  labelText: 'Password',
                  hintText: 'Password',
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Icon(
                      Icons.password,
                      color: Color.fromARGB(255, 128, 255, 0),
                      size: 24,
                    ),
                  ),
                  labelStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  hintStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  filled: true,
                ),
                style: const TextStyle(
                    color: Color.fromARGB(255, 235, 235, 235), fontSize: 24.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                controller: confirmPasswordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {},
                autocorrect: true,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  errorStyle: TextStyle(color: Color.fromARGB(255, 26, 255, 1)),
                  fillColor: Color.fromARGB(255, 0, 0, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 128, 255, 0), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 235, 235, 235), width: 1),
                  ),
                  labelText: 'Password Reenter',
                  hintText: 'Password Reenter',
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Icon(
                      Icons.password,
                      color: Color.fromARGB(255, 128, 255, 0),
                      size: 24,
                    ),
                  ),
                  labelStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  hintStyle: TextStyle(
                      height: 1.171875,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 128, 255, 0)),
                  filled: true,
                ),
                style: const TextStyle(
                    color: Color.fromARGB(255, 235, 235, 235), fontSize: 24.0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: SizedBox(
                height: 60.0,
                width: MediaQuery.of(context).size.width * 1.0,
                child: ElevatedButton.icon(
                  icon: const Icon(
                    Icons.login,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 24.0,
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: const BorderSide(color: Color.fromARGB(255, 128, 255, 0), width: 1.0),
                        )),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 255, 200, 0)),
                  ),
                  onPressed: () async {
                    // if(_loginFormKey.currentState==null) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Register well made"),
                    ));
                    // } else {
                    //   if (_loginFormKey.currentState!.validate()) {
                    //     _loginFormKey.currentState!.save();
                    //     EasyLoading.show();
                    //     var res = await authService.login(
                    //         _emailController.text, _passwordController.text);
                    //
                    //     switch (res!.statusCode) {
                    //       case 200:
                    //         EasyLoading.dismiss();
                    //         var data = jsonDecode(res.body);
                    //         storage.write(key: "token", value: data['token']);
                    Navigator.pushReplacement(
                        context, SlideRightRoute(page: const LoginPage()));
                    //         break;
                    //       case 401:
                    //         EasyLoading.dismiss();
                    //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //           content: Text("Wrong email or password!"),
                    //         ));
                    //         break;
                    //       default:
                    //         EasyLoading.dismiss();
                    //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //           content: Text("Wrong email or password!"),
                    //         ));
                    //         break;
                    //     }
                    //   }
                    // }
                  },
                  label: const Text('Register',
                      style: TextStyle(
                        height: 1.171875,
                        fontSize: 24.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 0, 0, 0),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: RichText(
                text: TextSpan(
                  text: ' Registered? ',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                        text: 'Sing up  ',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                    TextSpan(
                        text: 'here ',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context,
                                SlideRightRoute(page: const LoginPage()));
                          },
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 128, 255, 0),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
