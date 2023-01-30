import 'package:application/constants/colours.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            _searchBar(),
            _listView()
            ],
        ),
      ),
    );
  }



  AppBar _buildAppBar() {
    return (AppBar(
        elevation: 0,
        backgroundColor: tdBGColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/images/icons8-account-48.png'),
              ),
            )
          ],
        )));
  }



  Widget _searchBar() {
    return (Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search, color: tdBlack, size: 20),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'search',
        ),
      ),
    ));
  }

  Widget _listView() {
    return(Expanded(child: ListView(
              children: [
                 Container(
                   margin: const EdgeInsets.only(
                     top: 50,
                     bottom: 20
                   ),
                   child: const Text("Tasks to comlpete",
                   style: TextStyle(
                     fontWeight: FontWeight.w500,
                     fontSize: 30,
                   )
                   ),
                 )
              ],
            )
            ));
  }
}
