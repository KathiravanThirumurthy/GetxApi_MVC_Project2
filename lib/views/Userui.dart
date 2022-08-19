import 'package:api_project1/controller/UserController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Userui extends StatefulWidget {
  Userui({Key? key}) : super(key: key);

  @override
  State<Userui> createState() => _UseruiState();
}

class _UseruiState extends State<Userui> {
  UserController _userController = Get.put(UserController());

  @override
  void initState() {
    // TODO: implement initState
    _userController.userController();
    // _userController.getuserData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx((() {
        if (_userController.userData.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
              itemCount: _userController.userList.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Card(
                      child: Text(
                          _userController.userList[index].email.toString()),
                    ),
                    Card(
                      child: Text(
                          _userController.userList[index].firstName.toString()),
                    ),
                  ],
                );
              }));
        }
      })),
    );
  }
}
