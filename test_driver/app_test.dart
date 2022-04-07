import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Flutter driver', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });
/*

• Make the login/signup and forgot password working using local storage (Shared Preference)

• Once flow is working, using flutter Integration testing (https://docs.flutter.dev/testing/integration-tests) Automate the whole flow as below Signup -> Forgot Password -> Login -> Home (All text fields will be filled automatically)

• Integration Test cases needs to be created as a separate file.


Signup -> Forgot Password -> Login -> Home (All text fields will be filled automatically)
1 click on register

2 write on 3 textFields :
Email
password
confirm password




3
 All keys are to be kept in a constant file.
 Note (Integration Testing needs to be done for Flutter web on priority and then mobile apps).

*/
    // var register = find.text("register");
    // // find the tests
    // var textField = find.byType("TextField");
    // var button = find.text("Reverse");
    // var reverse = find.text("olleH");

    //1
    var register = find.text("Register");
    // find the tests
    //
    //

    test("Rev", () async {
      //tap on textField

      await Future.delayed(Duration(seconds: 2));
      await driver.tap(register);
      await Future.delayed(Duration(seconds: 2));

      var emailTextField = find.byValueKey("Email");
      var passwordTextField = find.byValueKey("Password");
      var confirmPasswordTextField = find.byValueKey("Confirm Password");
      var submitbutton = find.byValueKey("Submit");

      // go to register
      await driver.tap(emailTextField);
      await driver.enterText('Mohamed@Gmail.com');
      await Future.delayed(Duration(seconds: 2));

      await driver.tap(passwordTextField);
      await driver.enterText('12345678');
      await Future.delayed(Duration(seconds: 2));

      await driver.tap(confirmPasswordTextField);
      await driver.enterText('12345678');
      await Future.delayed(Duration(seconds: 2));

      await driver.tap(submitbutton);
      await Future.delayed(Duration(seconds: 2));

      ///-----------------
      //check if it's not here yet
    });
  });
}

/*
flutter drive   --driver=test_driver/integration_test.dart \
  --target=integration_test/counter_test.dart \
  -d web-server
flutter drive   --driver=test_driver/app.dart    -d web-server  --no-headless


In order to see how the test runs in chrome browser, use --no-headless flag at the end of the command


1
 flutter run -d chrome



.\chromedriver --port=4444
flutter drive --target=test_driver/app.dart --no-headless

*/
