import 'package:flutter/material.dart';
import 'package:submission_dicoding/screens/main_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHidden = true;

  TextEditingController nameC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[300],
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/beach.jpg',
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Welcome ',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      fontStyle: FontStyle.italic,
                      color: Colors.black87),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Email',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                    color: Colors.black87),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: nameC,
                  decoration: const InputDecoration(
                    hintText: 'Enter your username',
                    prefixIcon: Icon(Icons.person),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Password',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                    color: Colors.black87),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: TextField(
                  obscureText: _isHidden,
                  controller: passC,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: const Icon(Icons.lock),
                    suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            _isHidden = false;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye)),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Hero(
                tag: 'profile',
                transitionOnUserGestures: true,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[300],
                    maximumSize: Size(MediaQuery.of(context).size.width, 200),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    if (nameC.text.isNotEmpty && passC.text.isNotEmpty) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(
                              name: nameC.text,
                            ),
                          ));
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Error'),
                          content: const Text('Please fill the form'),
                          actions: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.grey[700]),
                              child: const Text('OK'),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ),
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Login'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      fontStyle: FontStyle.italic,
                      color: Colors.black87),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
