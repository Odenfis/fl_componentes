import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {

  //variables
  final String imageURL;
  final String? titulo;

  const CustomCardType3({
    super.key, required this.imageURL, this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(30)
      ),
      elevation: 10,
      child: Column(
        children: [
          /*Image(
            image: NetworkImage('https://elcomercio.pe/resizer/v2/6Y2EDIISGFGVFANEVDCR5LCG34.jpg?auth=f58b5c647a09717054d85bb8b9a6bc624bfcb14fe9c60b5246730ea6a513e2b0&width=1198&height=690&quality=75&smart=true')
            ),*/
          FadeInImage(
            fadeInDuration: Duration(milliseconds: 300),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: AssetImage(imageURL)
            ),
          if (titulo != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only(right: 20, bottom: 20, top: 20),
            child: Text(titulo ?? '<<sindato>>'),
          )
        ],
      ),
    );
  }
}