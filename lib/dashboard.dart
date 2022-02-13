import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xc190410e),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: const Center(
                    child: Icon(Icons.filter_list),
                  ),
                ),
                const Text(
                  'HOME',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xc190410e),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: const Center(
                    child: Icon(Icons.bookmark_border_outlined),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
