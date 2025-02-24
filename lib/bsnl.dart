import 'package:flutter/material.dart';
import 'package:presentaition/quickaction.dart';
class Bsnl extends StatefulWidget {
  const Bsnl({super.key});

  @override
  State<Bsnl> createState() => _BsnlState();
}

class _BsnlState extends State<Bsnl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      Container(
        height: 300,
      width: MediaQuery.of(context).size.width/0.1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange.shade50, Colors.orange.shade600],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
        child: Column(

        children: [
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Row(

              children: [
                Text(
                  "Good Afternoon, Prasad TNVD",
                  style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding:EdgeInsets.only(left: 20,top:0) ,
            child: Row(
              children: [
                Text("9618566951", style: TextStyle(color: Colors.black, fontSize: 10,fontWeight: FontWeight.bold)),
                SizedBox(width: 2),
                Container(
                  height: 16,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(child: Text("Prepaid", style: TextStyle(color: Colors.orange, fontSize: 9))),
                ),
              ],
            ),
          ),
        // Recharge Card
          SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          height: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 6, spreadRadius: 1)
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:100.0),
                child: Row(
                  children: [
                    Icon(Icons.lte_plus_mobiledata_sharp,color: Colors.black,),
                    SizedBox(width: 3,),
                    Icon(Icons.exposure_minus_1_outlined,color: Colors.red,),
                    Text("0 Pack", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Text("Expired", style: TextStyle(color: Colors.red, fontSize: 12,fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.orange.shade200),
                      borderRadius: BorderRadius.circular(20)
                      ),
                    child: Center(child: Text("View Pack",style: TextStyle(color: Colors.orange),)),
                    ),
                   SizedBox(width: 15),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                       color: Colors.orange.shade600,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text("View Pack",style: TextStyle(color: Colors.white),)),
                  ),
                ],
              ),

            ],
          ),
        ),

        ],


        ),
      ),
          // Exclusive Offer Banner

          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 13,vertical: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade50, Colors.blue.shade200],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
              borderRadius: BorderRadius.circular(17),
            ),
            child:const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("App Exclusive Offer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("Applicable on recharges above Rs 249.",style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Check Now >>", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18)),
                        // Text("Get 2% OFF", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange)),
                      ],
                    ),
                    Text("T&C apply",style: TextStyle(color: Colors.blue,fontSize: 9),),
                  ],
                ),
                 SizedBox(width: 30),
                Row(
                  children: [
                    Text("2", style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: Colors.orange)),
                     Padding(
                       padding: const EdgeInsets.only(top:30.0),
                       child: Text("%",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                     ),
                    Column(
                      children: [
                        Text("Get", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        Text("OFF", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                      ],
                    )
                  ],
                ),
              ],

            ),
          ),
         Container(
           height: 300,
           width:  390,



           decoration: BoxDecoration(
             color: Color.fromRGBO(254, 251, 246,1),
             borderRadius: BorderRadius.circular(17),
             boxShadow: [
               BoxShadow(color: Colors.grey, blurRadius: 3, spreadRadius: 1)
             ],
           ),
           child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               Padding(
                 padding: const EdgeInsets.only(left: 8.0,top: 3),
                 child: Text("Quick Actions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
               ),

              GridView.count(
                     crossAxisCount: 4,
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     children: [
                       Quickaction(text: "Recharge", icon: Icons.refresh),
                       Quickaction(text: "Pay bill ", icon: Icons.payment),
                       Quickaction(icon:Icons.phone, text: "Landline"),
                       Quickaction(icon: Icons.wifi, text: "Book Fiber"),
                       Quickaction(icon:Icons.sim_card, text: "Upgrade to 4G SIM"),
                       Quickaction(icon:Icons.notifications_off,text:  "Do Not Disturb"),
                       Quickaction(icon:Icons.numbers,text: "Number",),
                       Quickaction(icon:Icons.videogame_asset, text:"Games"),

                     ],
                   ),

         ]
         ),
         )
        ],
      ),


    );
  }

}
// Quickaction(Icons.refresh, "Recharge"),
// _quickAction(Icons.payment, "Pay Bill"),
// _quickAction(Icons.phone, "Landline"),
// _quickAction(Icons.wifi, "Book Fiber"),
// _quickAction(Icons.sim_card, "Upgrade to 4G SIM"),
// _quickAction(Icons.numbers, "Number", isNew: true),
// _quickAction(Icons.notifications_off, "Do Not Disturb"),
// _quickAction(Icons.videogame_asset, "Games"),
// ],
// ),