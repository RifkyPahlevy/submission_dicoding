import 'package:flutter/material.dart';
import 'package:submission_dicoding/screens/login.dart';

class MainPage extends StatelessWidget {
  final String name;
  const MainPage({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          title: Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.1,
              // ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.73,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 30,
                        ),
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.notifications_none_sharp,
                            size: 40)),
                  )
                ],
              ),
              TabBar(tabs: [
                Tab(
                  child: Text(
                    'Hotel',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13.4,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy'),
                  ),
                ),
                Tab(
                  child: Text(
                    'Motel',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13.4,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy'),
                  ),
                ),
                Tab(
                  child: Text(
                    'Villa',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13.4,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy'),
                  ),
                ),
                Tab(
                  child: Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13.4,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy'),
                  ),
                ),
              ]),
              Expanded(
                  child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.10,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.person),
                                  Text(
                                    '3 Adults',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Container(
                                color: Colors.grey,
                                width: 2,
                                height: 50,
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.calendar_today),
                                  Text('Jul 24 - Jul 28',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Container(
                                color: Colors.grey,
                                width: 2,
                                height: 50,
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.settings),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.43,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: SizedBox(
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 200,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                    'https://picsum.photos/200/300?random=$index',
                                                  ))),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          'Kalibata City',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.maps_home_work_outlined,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Jl. Pln durentiga',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: 'Gilroy',
                                                fontWeight: FontWeight.w100,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Best Offers',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'See all',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          'https://picsum.photos/200/300?random=$index',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Hotel Name',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Gilroy',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              Text(
                                                '4.$index',
                                                style: const TextStyle(
                                                    color: Colors.amber),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(children: const [
                                        Icon(
                                          Icons.maps_home_work_outlined,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Jl. Pln durentiga',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w100,
                                          ),
                                        )
                                      ]),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Rp. $index.000.000',
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Gilroy',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const Center(child: Text('CHATS')),
                const Center(child: Text('STATUS')),
                const Center(child: Text('CALLS')),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
