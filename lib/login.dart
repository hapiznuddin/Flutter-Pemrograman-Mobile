import 'package:flutter/material.dart';
import 'package:uts_pm_hapiznuddin_20190801364/profile.dart';
import 'package:uts_pm_hapiznuddin_20190801364/register.dart';
import 'theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _value = true;

  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrnd,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Text('Welcome to \nMy App', style: Heading3),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Email',
                      style: Heading5,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        style: BodyN,
                        decoration: InputDecoration(
                          hintText: 'Type your email',
                          hintStyle: TextStyle(fontSize: 16, color: Neutral60),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Password',
                      style: Heading5,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: _buildPasswordField(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4, left: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Checkbox(
                      value: _value,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          _value = newValue!;
                        });
                      },
                    ),
                  ),
                  Text('Remember me', style: BodyS),
                  SizedBox(width: 48),
                  Text('Forgot Password?', style: BodyS),
                ],
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 8, 67, 116).withOpacity(0.3),
                        offset: Offset(0, 10),
                        blurRadius: 16,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.grey.shade300,
                      primary: primary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 4),
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Or login with', style: BodyN),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Neutral60.withOpacity(0.3),
                        offset: Offset(0, 16),
                        blurRadius: 13,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.grey.shade300,
                      primary: Neutral10,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/google.png',
                                height: 24,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Google',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Neutral100,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?", style: BodyN),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: _isHidePassword,
      autofocus: false,
      initialValue: '',
      keyboardType: TextInputType.text,
      style: BodyN,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        hintText: 'Type your password',
        hintStyle: TextStyle(fontSize: 16, color: Neutral60),
        suffixIcon: GestureDetector(
          onTap: () {
            _togglePasswordVisibility();
          },
          child: Icon(
            _isHidePassword ? Icons.visibility_off : Icons.visibility,
            color: _isHidePassword ? Colors.grey : Colors.blue,
          ),
        ),
        isDense: true,
      ),
    );
  }
}
