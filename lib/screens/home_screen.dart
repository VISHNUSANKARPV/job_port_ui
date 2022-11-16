import 'package:flutter/material.dart';
import 'package:tl_live_test/widgets/appbar_button.dart';
import 'package:tl_live_test/widgets/job_card.dart';
import 'package:tl_live_test/widgets/sliver_bar_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 290,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 30, 28, 28),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Samuel John",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Trivandrum,Palayam",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.notification_add,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SliverBarCard(
                        num: '1',
                        text: 'Active',
                      ),
                      SliverBarCard(
                        num: '2',
                        text: 'Pending',
                      ),
                      SliverBarCard(
                        num: '1',
                        text: 'Completed',
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppBarBotton(
                        buttonNum: '6000',
                        buttonText: 'Earned',
                        icon: Icons.wallet,
                      ),
                      AppBarBotton(
                        buttonNum: '12',
                        buttonText: 'Feedbacks',
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12)),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            Icons.security_update_outlined,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Job List (10)",style: TextStyle(color: Colors.black,fontSize: 16),),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                  height:double.maxFinite,
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: true,
                      itemCount: 5,
                      itemBuilder: (context,index){
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: JobCard(),
                      );
                    }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
