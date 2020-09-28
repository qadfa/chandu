import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ------------- my packages -----------------
import '../models/userIdStatus.dart';
import '../widgets/userIdSetUpWidget.dart';
import '../widgets/courseSetUpWidget.dart';
import '../widgets/acceptUserIdWidget.dart';
import '../widgets/mainProduct.dart';

class HomePageWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    final userIdStatus = Provider.of<UserIdStatus>(context);
    final _haveUserIdStatus = userIdStatus.getUserIdStatus();
    final _isUserIdAvailable = userIdStatus.getUserIdAvailableStatus();
    final _acceptsUserId = userIdStatus.getAccent();
    final _isCourseSetUpDone = userIdStatus.getCourseSetUpStatus();
    return Scaffold(
      body: _haveUserIdStatus
          ? (_isUserIdAvailable
              ? AcceptUserIdWidget()
              : (_isCourseSetUpDone
                  ? MainProductWidget()
                  : CourseSetUpWidget()))
          : UserIdSetUpWidget(),
    );
  }
}
