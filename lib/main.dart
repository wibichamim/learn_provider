import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'gender_provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GenderProvider>(
      create: (context) => GenderProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<GenderProvider>(
                    builder: (context, genderProvider, _) => Text(
                      'Gender Picker',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: genderProvider.color,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        Expanded(
                          child: Consumer<GenderProvider>(
                            builder: (context, genderProvider, _) =>
                                GestureDetector(
                              onTap: () {
                                genderProvider.isMale = true;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: genderProvider.maleContainer),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/icon_male.png',
                                        height: 80,
                                        color: genderProvider.maleContainer,
                                      ),
                                      Text(
                                        'Male',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: genderProvider.maleContainer,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Consumer<GenderProvider>(
                            builder: (context, genderProvider, child) =>
                                GestureDetector(
                              onTap: () {
                                genderProvider.isMale = false;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: genderProvider.femaleContainer),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/icon_female.png',
                                        height: 80,
                                        color: genderProvider.femaleContainer,
                                      ),
                                      Text(
                                        'Female',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                genderProvider.femaleContainer),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
