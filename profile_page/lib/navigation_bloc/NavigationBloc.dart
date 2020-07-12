import 'package:bloc/bloc.dart';
import 'package:profilepage/screens/HomePage.dart';
import 'package:profilepage/screens/MessagePage.dart';
import 'package:profilepage/screens/MyProfilePage.dart';
import 'package:profilepage/screens/NotificationPage.dart';
import 'package:profilepage/screens/SettingsPage.dart';

enum NavigationEvents {
  HOME_PAGE_SIDEBAR_CLICK_EVENT,
  MY_PROFILE_SIDEBAR_CLICK_EVENT,
  SETTINGS_PAGE_SIDEBAR_CLICK_EVENT,
  NOTIFICATIONS_PAGE_SIDEBAR_CLICK_EVENT,
  MESSAGES_PAGE_SIDEBAR_CLICK_EVENT
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HOME_PAGE_SIDEBAR_CLICK_EVENT:
        yield HomePage();
        break;
      case NavigationEvents.MY_PROFILE_SIDEBAR_CLICK_EVENT:
        yield MyProfilePage();
        break;
      case NavigationEvents.SETTINGS_PAGE_SIDEBAR_CLICK_EVENT:
        yield SettingsPage();
        break;
      case NavigationEvents.NOTIFICATIONS_PAGE_SIDEBAR_CLICK_EVENT:
        yield NotificationPage();
        break;
      case NavigationEvents.MESSAGES_PAGE_SIDEBAR_CLICK_EVENT:
        yield MessagePage();
        break;
    }
  }
}
