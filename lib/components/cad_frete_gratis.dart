import 'package:flutter/material.dart';


class CardFrete extends StatelessWidget {
  const CardFrete({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.only(left: 7.5, right: 7.5),
      width: 356.0,
      height: 40.0,
      
       decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(3, 5),

              ),
          ],
          ),


          

          
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             
             children: [
           
         
            RichText(
            text: TextSpan(
            children: [
              
             WidgetSpan(
             child: Icon(Icons.local_shipping_outlined , size: 19, color: Colors.green,),
              ),

            TextSpan(
            text: " Frete Grátis ",
            style: TextStyle(color: Colors.green, fontSize: 12)
            ),
            TextSpan(
            text: "em milhões de produtos a partir de R\$79",
            style: TextStyle(color: Colors.black, fontSize: 12)
      ),
    ],
  ),
),
            

              
             ],
          ),
    );
   

  }
}