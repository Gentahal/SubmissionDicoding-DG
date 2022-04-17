import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// PreferredSize appBar() {
//   return PreferredSize(
//     preferredSize: Size.fromHeight(150),
//     child: Stack(
//       children: <Widget>[
//         Container(
//           decoration: BoxDecoration(
//               color: Colors.greenAccent,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(35),
//                 bottomRight: Radius.circular(35),
//               )),
//           child: Center(
//             child: Text(
//               'Negara G20',
//               style: TextStyle(
//                 fontSize: 25.0,
//                 fontWeight: FontWeight.w800,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//         Container(),
//         Positioned(
//           top: 50.0,
//           left: 20.0,
//           right: 20.0,
//           child: AppBar(
//             backgroundColor: Colors.white,
//             leading: Icon(Icons.menu, color: Colors.greenAccent),
//             primary: false,
//             title: TextField(
//               decoration: InputDecoration(
//                 hintText: "Search",
//                 hintStyle: TextStyle(color: Colors.grey),
//               ),
//             ),
//             actions: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.search, color: Colors.greenAccent),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 icon: Icon(Icons.notifications, color: Colors.greenAccent),
//                 onPressed: () {},
//               )
//             ],
//           ),
//         )
//       ],
//     ),
//   );
// }

appBar(height) => PreferredSize(
    preferredSize:  Size.fromHeight(145),
    child: Stack(
      children: <Widget>[
        Container( 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
            color: Colors.greenAccent,
          ),    // Background
          child: Center(
            child: Text("NegaraG20", style: TextStyle(fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),),),
                
          height: height+75,
        ),

        Container(),   // Required some widget in between to float AppBar

        Positioned(    // To take AppBar Size only
          top: 100.0,
          left: 20.0,
          right: 20.0,
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 10,
            leading: Icon(Icons.menu, color: Colors.greenAccent),
            primary: false,
            title: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey))),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.greenAccent), onPressed: () {},),
              IconButton(icon: Icon(Icons.notifications, color: Colors.greenAccent),
                onPressed: () {},)
            ],
          ),
        )

      ],
    ),
  );
