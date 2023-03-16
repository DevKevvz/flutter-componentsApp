import 'package:components_app/theme/theme.dart';
import 'package:flutter/material.dart';

// import 'package:components_app/screens/screens.dart';
import 'package:components_app/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Components App'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text(AppRoutes.menuOptions[index].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => ListView2Screen());
                    // Navigator.push(context, route);
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
