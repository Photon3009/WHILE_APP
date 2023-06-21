import 'package:flutter/material.dart';
import 'package:while_app/resources/components/profile_data_widget.dart';
import 'package:while_app/view/uploaded_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(length: 3, child: NestedScrollView(
        headerSliverBuilder: (context, _){
          return [
            SliverList(delegate: SliverChildListDelegate([ const ProfileDataWidget()]))
          ];

        }, body: const Column(
          children: [
            Material(
              child: TabBar(
                indicatorColor: Colors.black,
                tabs: [
                Tab(icon: Icon(Icons.photo, color: Colors.black,),),
                Tab(icon: Icon(Icons.twelve_mp_outlined, color: Colors.black,),),
                Tab(icon: Icon(Icons.brush, color: Colors.black,),)
              ]),
            ),
            Expanded(child: TabBarView(children: [
              UploadedScreen(),
              Text("second"),
              Text("third")
            ]))
          ],
        ),
      )),
    );
  }
}