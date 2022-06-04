import 'package:flutter/material.dart';
import 'package:submission_dicoding/screens/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF22215B),
            )),
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Color(0xFF22215B),
            fontFamily: 'Gilroy',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Color(0xFF22215B),
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Profile Page',
              style: TextStyle(
                color: Color(0xFF22215B),
                fontFamily: 'Gilroy',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Hero(
              tag: 'profile',
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                height: MediaQuery.of(context).size.height * 0.38,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(0xff22215B),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Image.asset('assets/images/profile.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Rifky Pahlevy',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Mobile Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "I'm a Mobile Developer that learning to code and I'm a fan of Flutter and java",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 223, 217, 217),
                        fontFamily: 'Gilroy',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
