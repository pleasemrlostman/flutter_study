import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/fish_model.dart';
import 'package:test_prog/page/name/name_first.dart';
import 'package:test_prog/page/name/name_next.dart';
import 'package:test_prog/page/name/name_second.dart';
import 'package:test_prog/page/user/user_page.dart';
import 'package:test_prog/screen/getx/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:test_prog/seafish_model.dart';

// Imperative vs Declarative
// 명령적으로 라우팅을 할 것인가 선언적으로 할 것인가.
void main() {
  runApp(
    MyApp(),
    // GetMaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //       visualDensity: VisualDensity.adaptivePlatformDensity),
    //   home: HomeScreen(),
    //   // initialRoute: "/",
    //   getPages: [
    //     GetPage(
    //         name: "/", page: () => HomeScreen(), transition: Transition.zoom),
    //     GetPage(
    //         name: "/first",
    //         page: () => NameFirstPage(),
    //         transition: Transition.zoom),
    //     GetPage(
    //         name: "/second",
    //         page: () => NameSecondPage(),
    //         transition: Transition.zoom),
    //     GetPage(
    //         name: "/next",
    //         page: () => NameNext(),
    //         transition: Transition.zoom),
    //     GetPage(
    //         name: "/user/:uid",
    //         page: () => UserPage(),
    //         transition: Transition.zoom),
    //   ],
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              FishModel(name: 'Salmon', number: 10, size: 'big'),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              SeaFishModel(name: 'Tuna', tunaNumber: 10, size: 'big'),
        ),
      ],
      child: MaterialApp(
        home: FishOrder(),
      ),
    );
  }
}

class FishOrder extends StatelessWidget {
  const FishOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fish Order"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Fish Name: ${Provider.of<FishModel>(context).name}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            High(),
          ],
        ),
      ),
    );
  }
}

class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "SpicyA is located at high place",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyA(),
      ],
    );
  }
}

class SpicyA extends StatelessWidget {
  const SpicyA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Fish Number ${Provider.of<FishModel>(context).number}",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Fish Size ${Provider.of<FishModel>(context).size}",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        Middle(),
      ],
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "SpicyB is located at high place",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyB(),
      ],
    );
  }
}

class SpicyB extends StatelessWidget {
  const SpicyB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Tunar Number ${Provider.of<SeaFishModel>(context).tunaNumber}",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Tunar Size ${Provider.of<SeaFishModel>(context).size}",
          style: TextStyle(fontSize: 20),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<SeaFishModel>(context, listen: false)
                .changeSeaFishNumber();
          },
          child: Text("Change Sea Fish Number"),
        ),
        SizedBox(
          height: 20,
        ),
        Low(),
      ],
    );
  }
}

class Low extends StatelessWidget {
  const Low({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "SpicyC is located at high place",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyC(),
      ],
    );
  }
}

class SpicyC extends StatelessWidget {
  const SpicyC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Fish Number ${Provider.of<FishModel>(context).number}",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Fish Size ${Provider.of<FishModel>(context).size}",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<FishModel>(context, listen: false).changeFishNumber();
          },
          child: Text('Change fish number'),
        )
      ],
    );
  }
}
