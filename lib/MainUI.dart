import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/addContact.dart';
import 'package:myapp/pages/Home.dart';
import 'package:myapp/pages/Chating.dart';
import 'package:myapp/pages/contact.dart';
import 'package:myapp/pages/mine.dart';
import 'package:myapp/pages/widgets%20for%20mine/CardMine.dart';

// 自定义路由过渡动画 - 左右滑动
class SlidePageRoute extends PageRouteBuilder {
  final Widget page;

  SlidePageRoute({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}

class MainWidegetMaterialApp extends StatefulWidget {
  const MainWidegetMaterialApp({
    super.key,
  });

  @override
  State<MainWidegetMaterialApp> createState() => _MainWidegetMaterialAppState();
}

class _MainWidegetMaterialAppState extends State<MainWidegetMaterialApp> {
  int _currentIndex = 0;

  // 页面列表，与导航栏 item 顺序保持一致
  final List<Widget> _pages = const [
    HomeWidget(),
    ContactPage(),
    MinePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      // 注册命名路由，构建时从路由 settings 读取传入的参数并传给 Chating
      routes: {
        '/addContact': (context) => Addcontact(),
        '/chat': (context) {
          final args = ModalRoute.of(context)?.settings.arguments;
          final String name = args is String ? args : '';
          return Chating(name: name);
        },
      },
      onGenerateRoute: (settings) {
        // 为所有命名路由应用左右滑动动画
        if (settings.name == '/chat') {
          final args = settings.arguments;
          final String name = args is String ? args : '';
          return SlidePageRoute(page: Chating(name: name));
        }
        return null;
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            '畅连(2)',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          centerTitle: true,
          backgroundColor: Colors.grey[100],
          actions: [
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addContact');
                },
                icon: Icon(Icons.add),
              ),
            ),
          ],
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          )
          
        ),
        
        body: _pages[_currentIndex],
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(height: 200,child: Cardmine(),),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('添加好友'),
                onTap: () {
                  Navigator.pushNamed(context, '/addContact');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('设置'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('帮助'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('关于'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            backgroundColor: Colors.grey[100],
            elevation: 0,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: '聊天'),
              BottomNavigationBarItem(icon: Icon(Icons.contact_emergency), label: '联系人'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: '我'),
            ],
          ),
      ),
    );
  }
}
