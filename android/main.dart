import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//
//
//
//
//
//
//
//
//
//
//
//
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

//what is Dart?
  //Dart is a statically typed, object-oriented programming language developed
  // by Google which can be used to build web and mobile applications.

// Stateless Widget are the widgets that don’t change
// While
// Stateful widgets are the widgets that change its properties during run time.

// State is data used by the app

// Method 1: Use the refactor capability of the IDE
// Method 2: Manually create change the stateless widget to stateful widget

// Statically typed
  //you define what type of data a variable uses

//Object oriented
  //everything is an object, you define a class as a blueprint for your own object

  //Functions allow us to "outsource" code into re-usable code "snippets"

//TO ADD NUMBERS
  // num addNumbers(num num1, num num2){
  //   num sumResult = (num1 + num2);
  //   return (sumResult); }
  // void main() {
  //   print(addNumbers(2, 3.5));
  // }

//CLASSES FOR FRIENDS
  // class Course{
  //   var dept = "CIT";
  //   var title = "Mobile Development";
  //   var level = 400;
  // classInfo(){
  //   print(title +' is a '+level.toString()+' Level '+dept+' course' );
  //   }
  // }
  //
  // void main(){
  //   var session = Course();
  //   session.classInfo();
  //   var session_2 = Course();
  //   session_2.title = "Data Management I";
  //   session_2.level = 300;
  //   session_2.classInfo();
  // }

// Mobile Eco system chart
//   mobile user, mobile manufacturers, OS, Mobile apps DEv tools, mobile app DEv company, mobile app stores, mobile ad companies, carrier, network
//   mobile cloud, devices, others


  // Mobile Ecosystem is a collection of multiple devices,software,companies etc,and the process by which data is sharred by a user
  // from one device to another device.


// Types of mobile applications

// 1. Native App: are built for a specific operating system.
  //     swift for ios
  //     Java for Android OS
  //     Net(C#) for windows OS
  //
// 2. Mobile web apps: are the web applications to render/deliver pages on web browsers running in mobile devices.
  //     software for dev is:
  //     HTML,CSS,JavaScript,JQuery
  //
// 3. Hybrid Apps: are a mixture of both native and mobile web apps.
//   HTML,CSS,Javascript,Jquery,Cordovo



// Mobile2.0
//   Mobile 2.0 refers to services that integrate the social web with the core aspects of mobility – personal, localized, always-on and ever-present.


// Cross platform
  // The cross-platform development project aims to create apps compatible with several operating systems.
  // Cross-platform apps work on iOS, Android, and Windows.


// Factor to be considered in the choice of Development tools in Cross platform development.
  // 1. Development Workload.
  // Cross platform development decreases the development workload & resource requirements.
  //
  // 2. Platform Compatibility.
  // Cross platform tools must support a variety of platforms (iOS/android) to qualify as top tier development tools.
  //
  // 3. Usability.
  // A mobile app produced by a cross platform tool must deliver positive user experience.
  //
  // 4. Scalability.
  // Scalability should be in mind when developing enterprise apps that need to scale with a company.
  //
  // 5. Security.
  // Regardless of the platform that its deployed on, security should be put in place to protect the customer and the development firm from data breach.
  //
  // 6. Functionality/UI.
  // Best Cross platform tools should provide a functional and enterprise level UI for all mobile apps they produce regardless of their platform used for deployment.


// Pros and Cons of cross platform development.

  // Pros.
  // > They cost less.
  // > Easier to maintain and test.
  // > Takes less time to develop.
  // > They look like native apps, providing consistent User Experience.
  //
  // Cons.
  // > Cannot harness the power of native features like 3D effects.
  // > They don’t render advanced designs as well as native apps


// 6 cross platform Apps development tools and frameworks.
  //
// 1. Xamarin.
  // Xamarin works across platforms with C# and .NET languages.
  // Xamarin began as an open-source project.
  // Xamarin aimed to solve the problem of disjointed and confusing native app development processes.
  //
  // Pros
  // > Allows code sharing across platforms at a rate of 75%.
  // > Strong user base of 60,000 contributors.
  //
  // Cons
  // > Limited libraries.
  // > Expensive for enterprise users.
  //
// 2. React Native.
  // Facebook launched React Native in 2015. React Native allows developers to create hybrid native/cross-platform apps.
  // Developers love React Native for its speed and lightness.
  // React creates apps that work on Android, IOS, and UWP.
  //
  // Pros
  // > Allows code sharing across platforms at a rate of 80%.
  // > Allows app use native features like camera.
  //
  // Cons
  // > Not fully cross-platform.
  // > Takes longer to debug android devices.
  //
// 3. Flutter.
  // Google created Flutter as a cross-platform framework. Flutter has many great features.
  // Some of these include: seamless animation, SDK (Software Development Kit) and a flexible UI.
  // Flutter supports native device features like camera, location services and hard drive access.
  // Flutter uses the Dart programming language.
  //
  // Pros
  // > 2D app support.
  // > Robust creative designs.
  //
  // Cons
  // > Apps tend to be heavy.
  // > Dart is not a very popular programming language.
  //
// 4. Adobe PhoneGap
  // Adobe Phone Gap creates hybrid apps using HTML 5, CSS, C#, C++ and JavaScript.
  // Adobe Phone Gap has a robust back-end.
  // Adobe Phone Gap gives developers security and flexibility.
  //
  // Pros
  // > Cross platform
  // > Secure
  //
  // Cons
  // > Outdated Plug-ins.
  // > Coding on IOS must be done on Macintosh.

// 5. Ionic.
  // Developers like Ionic for hybrid app development.
  // Ionic is open-source, scalable and easy to read.
  // Ionic contains a great set of tools.
  // Ionic’s tool set includes support for material design, native-like UI components.
  // Ionic releases updates often.
  // Ionic apps have many native-style functions.
  //
  // Pros
  // > Developer focused.
  // > Large community of developers.
  //
  // Cons
  // > Unstable plugins.
  // > Takes longer to debug android devices.

// 6. Sencha.
  // Enterprise users love Sencha for creating apps.
  // Sencha creates apps for iOS, Android and even Blackberry operating systems.
  // Sencha uses an HTML 5-based framework to create mobile applications.
  //
  // Pros
  // > Customizable UI.
  // > Large component library.
  //
  // Cons
  // > Cannot access camera.
  // > No push notifications possible.

  //
// Mobile Information Architecture // While designing for mobile the following steps need to be followed.
  // > Support sound user experience decisions.
  // > Separate Taxonomy and Navigation.
  // > Learn the patterns and guard against falling into difficult patterns.
  // > Build a future friendly and re-usable foundation.
  //
// Mobile Design
  // >Small Screens.
  // >Keep Navigation Simple.
  // >Keep content to a minimum.
  // >Reduce the inputs required from users.
  // >Remember mobile connections are not stable.

  //
  //
  //
  //
  //
  //
  //
  //
  //
  //
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
