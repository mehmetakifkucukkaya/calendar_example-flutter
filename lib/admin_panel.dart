import 'package:calendar_example/constants.dart';
import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 360,
                  height: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.lightBlue,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),

                      //* ToDo Kısmı
                      child: Container(
                        width: 290,
                        height: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.pink,
                        ),
                        child: ListView(
                          children: [
                            buildListTile(
                              "Toplantı",
                              "Toplantı saati belirtilecek",
                              Icons.emoji_events,
                            ),
                            buildListTile("Görüşme", "Müşteri ile görüşülecek",
                                Icons.person_rounded),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_circle,
                                  color: Colors.white,
                                  size: 45,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: buildFloatingActions(),
    );
  }

//* ListTile Widget'ı
  Padding buildListTile(
    String title,
    String subtitle,
    IconData icon,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.yellow,
            size: 35,
          ),
          title: Center(
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
          subtitle: Center(
            child: Text(
              subtitle,
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
          ),
          trailing:
              const Icon(Icons.check_box_outline_blank, color: Colors.black),
        ),
      ),
    );
  }

  //* FloatingActionButtons
  Widget buildFloatingActions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: AppColors.blue,
            onPressed: () {},
            child: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 25),
          FloatingActionButton(
            backgroundColor: AppColors.blue,
            onPressed: () {},
            child: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 25),
          FloatingActionButton(
            backgroundColor: AppColors.blue,
            onPressed: () {},
            child: const Icon(
              Icons.calendar_month,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

//* AppBar Widget'ı
  AppBar buildAppBar() {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      actions: const [
        Icon(
          Icons.notifications_sharp,
          color: Colors.black,
          size: 26,
        ),
      ],
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 26,
        ),
        onPressed: () {},
      ),
      elevation: 5,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Yönetici",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
              Text(
                "Mehmet Akif Küçükkaya",
                style: TextStyle(fontSize: 18, color: Colors.grey[300]),
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.darkBlue,
      centerTitle: true,
      title: const Text(
        'Yönetici Paneli',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
