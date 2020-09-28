import 'package:flutter/foundation.dart';

class UserIdStatus with ChangeNotifier {
  bool _haveUserId;
  bool _isUserIdAvailable;
  bool _acceptUserId;
  String _curUserId;
  bool _isCourseSetUpDone;

  UserIdStatus(this._haveUserId);

  getUserIdStatus() => _haveUserId;
  getUserIdAvailableStatus() => _isUserIdAvailable;
  getCourseSetUpStatus() => _isCourseSetUpDone;
  getAssent() => _acceptUserId;
  getCurUserId() => _curUserId;

  //-------- To check if user already has an user id-------------------
  chngUIdStatus(bool status) async {
    if (status) {
      _haveUserId = true;
    } else {
      _haveUserId = false;
    }
    notifyListeners();
  }

  //-------- To see if user accepts the selected user id----------------
  processUserId(bool ascent) async {
    if (ascent) {
      _acceptUserId = true;
    } else {
      _acceptUserId = false;
    }
    notifyListeners();
  }

  //---------- To see if the currently selected user id is available------------
  userIdAvailability(bool availibility) async {
    if (availibility) {
      _isUserIdAvailable = true;
    } else {
      _isUserIdAvailable = false;
    }
    notifyListeners();
  }

  //---------- To see if the course set is done or not ------------
  courseSetUpStatus(bool status) async {
    if (status) {
      _isCourseSetUpDone = true;
    } else {
      _isCourseSetUpDone = false;
    }
    notifyListeners();
  }

  //----------- Set current user id----------------
  setCurUserId(String curUserId1) async {
    _curUserId = curUserId1;
    notifyListeners();
  }
}