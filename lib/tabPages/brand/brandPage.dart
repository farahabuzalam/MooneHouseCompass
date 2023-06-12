import 'package:flutter/material.dart';
import 'package:testproject/constants/appsize.dart';
import 'package:testproject/tabPages/brand/brandCont.dart';

class BrandPage extends StatefulWidget {
  Function () refresh;

   BrandPage({Key? key, required this.refresh}) : super(key: key);

  @override
  State<BrandPage> createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:GridView(
          padding: EdgeInsets.all(AppSize.padding10),
          //scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.8,
              crossAxisSpacing: AppSize.padding10,
              mainAxisSpacing: AppSize.padding10,
              crossAxisCount: 2),
          children: [
            BrandCont(
                image: 'https://play-lh.googleusercontent.com/l5h5hY07sfRfAF7AQ-pVBZ4edN82hvdtIOEE1gFRfvmNRuGDHwP1K7cjflEOslkgwdU=w240-h480-rw',
                brandName: "MooneHoouse"),
            BrandCont(
              image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwFwrdoUpB8L4dacZqrs2DzqlWnhcs3iGUyGjGunPxZYavGyGzXXqyDO91Av1g_gEbzkI&usqp=CAU',
              brandName:"hammoudeh"
            ),
            BrandCont(
                image:'https://flavourmills.com/wp-content/uploads/2022/04/logo.jpg',
                brandName:"Al Nakha"
            ),
            BrandCont(
                image:'https://upload.wikimedia.org/wikipedia/en/3/34/Siniora_food_logo.png',
                brandName:"Siniora"
            ),
            BrandCont(
                image:'https://play-lh.googleusercontent.com/k5ultOf7jPteFz4TmYllQHXTSTOurlnEBjSr1D_1vWgk1HOeeukfI5xQPxjK7-nDGcqP',
                brandName:"Al Ameed Coffee"
            ),
            BrandCont(
                image:'https://images.deliveryhero.io/image/talabat/restaurants/logo_637501160710088851.jpg?width=180',
                brandName:"Bakdash"
            ),
          ]


      ),

    );
  }
}
