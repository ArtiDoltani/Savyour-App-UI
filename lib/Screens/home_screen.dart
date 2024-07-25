import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:savyour_app/Screens/Models/categories_model.dart';
import 'package:savyour_app/Screens/app_countdown.dart';
import 'package:savyour_app/Screens/categories.dart';
import 'package:savyour_app/decoration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController searchController = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/afternoon.jpg"),
                      fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("images/user.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0, right: 10),
                            child: Text("Savyour",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      color: Colors.black87,
                                    )),
                          ),
                          
                          UiHelper.CustomContainer(
                              150,
                              35,
                              Center(
                                  child: Text("Refer & Get Cash",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(color: Colors.red))),
                              Colors.white)
                        ],
                      ),
          
                      UiHelper.CustomTextField(
                          searchController, "Metro, Ideas, Daraz", Icons.search),
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Good Morning, User",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
          
                      // ===== 2nd Section ========
                      // creating 3 Containers
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 1st
                          UiHelper.CustomContainer(
                            170,
                            220,
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Online Cashback",
                                    style:
                                        Theme.of(context).textTheme.displayMedium,
                                  ),
                                  Text(
                                    "Find hundreds of \nbrands at one stop",
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  const Center(
                                    child: Image(
                                        image: AssetImage("images/mob.PNG"), 
                                        // height: 20,
                                        width: 110,
                                        ),
                                  )
                                ],
                              ),
                            ),
                            Colors.white,
                          ),
          
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 2nd
                                UiHelper.CustomContainer(
                                  200,
                                  80,
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Savings Will \nShow Here",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium,
                                        ),
                                      ),
                                      const Expanded(
                                          child: Image(
                                              image:
                                                  AssetImage("images/bag.PNG")))
                                    ],
                                  ),
                                  Colors.white,
                                ),
                                // 3rd
                                UiHelper.CustomContainer(
                                  200,
                                  120,
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topRight: Radius.circular(10))),
                                        child: Center(
                                            child: Text(
                                          "Beta",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(color: Colors.white),
                                        )),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 28.0),
                                        child: Text(
                                          "Hey, I'm Savvy!",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium,
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 13.0),
                                            child: Text(
                                              "I'm your personal \nassistant. As..",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            ),
                                          ),
                                          const Expanded(
                                              child: Image(
                                            image: AssetImage("images/robo.PNG"),
                                            width: 30,
                                            height: 40,
                                          ))
                                        ],
                                      )
                                    ],
                                  ),
                                  Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          const SizedBox(height: 20,),
              // ======3rd section=======
              //  Creating Bonus gift Container
              UiHelper.CustomContainer(
                0,
                150,
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Bonus Awaits",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        "Get 2x cashback on your next order",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Time left", style: Theme.of(context).textTheme.bodyLarge,),

                          // Count Down Function
                          
                          Expanded(
                            child: AppCountDown(deadline: DateTime.now().add(const Duration(hours:5)))),
                          // Image
                          const Image(
                            image: AssetImage("images/gift.PNG"),
                            
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Color.fromARGB(255, 253, 131, 172),
              ),
                 
              // Categories Section
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 40, bottom: 15),
                child: Text(
                  " Categories",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
          
             const CategoriesSection()
            ],
          ),
        ),
      ),
    );
  }
}
