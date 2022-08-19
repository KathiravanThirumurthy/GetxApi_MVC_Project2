import 'package:api_project1/model/Usermodel.dart';
import 'package:api_project1/service/apiservice.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  ApiService _apiService = ApiService();

  // to get array of object in the map
  var userList = <Datum>[].obs;
  // to get whole map
  List<Userdata> userData = <Userdata>[].obs;
  //List<Model> get getModel=>_model
  List<Userdata> getAllData() {
    return userData;
  }

  //List<UserModel>
  Future userController() async {
    try {
      var response = await _apiService.getUser();
      //if we want to access whole model
      if (response != null) {
        userData.add(response);
      }
      // if we want to acces only array of object in the object
      /* if (response != null) {
        userList.value = response.data!;
        print(response.data![0].email);
      } else {
        return null;
      }*/
    } catch (e) {
      rethrow;
    }
  }
// if we want to acces only array of object in the object
 /* Future  getuserData() async {
    try {
      var response = await _apiService.getUser();

      // if we want to acces only array of object in the object
      if (response != null) {
        userList.value = response.data!;
        print(response.data![0].email);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }*/
}
