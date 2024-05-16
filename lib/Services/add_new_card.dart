import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_udemy_clone_project/Services/Constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_udemy_clone_project/Services/Constants.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Add Card"),
        leading: GestureDetector(
            child: const Icon( Icons.arrow_back_ios, color: Colors.white),
            onTap: () {
              Navigator.pop(context);
            }
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                hintText: "Card Number",
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SvgPicture.asset("assets/images/card.svg"),
                )
              ),
            ),
           // Padding(
                //padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            TextFormField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SvgPicture.asset("assets/images/user.svg"),
                  ),
                ),
              ),
         //   ),
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "CVV",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SvgPicture.asset("assets/images/Cvv.svg"),
                        ),
                      ),
                    ),
                ),
                const SizedBox(width: defaultPadding,),
                Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "MM/YY",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SvgPicture.asset("assets/images/calendar.svg"),
                        ),
                      ),
                    ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: defaultPadding),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all <Color> (kPrimaryColor),
                  ),
                  onPressed: (){
                showDialog(context: context, builder: (_){
                  return AlertDialog(
                    title: Text('Do You Want To Add Card?'),
                    content: Text('After Adding The Course You Selected Will Be Auto Bought.'),
                    actionsPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      ElevatedButton(
                        child: Text('Proceed'),
                        onPressed: () {
                          Navigator.pop(context);
// Handle the proceed action
                        },
                      ),
                    ],
                  );
                });

              },
                  child: Text(
                      "Add Card"
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

