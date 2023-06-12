import 'package:flutter/material.dart';
import 'package:testproject/constants/appcolor.dart';
import 'package:testproject/globalVariables.dart';
import 'package:testproject/homeScreen.dart';

class EmptyCart extends StatefulWidget {
  Function () refresh;
   EmptyCart({Key? key, required this.refresh}) : super(key: key);

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: Stack(
          children: [

              Image.asset('assets/image/emptycartlogo.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),

            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                  onPressed: ()=> _goHome(),
                  style: TextButton.styleFrom(backgroundColor: AppColor.mainColor),
                  child: Text('Start shopping',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white),
                  )
              ),
            )
          ]
        ),
      );
  }

  _goHome()  {
      GlobalVariables.selectedTap = 0;
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen()), (route) => false);
  }
}
