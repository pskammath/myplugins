library sib;

import 'package:flutter/material.dart';
class SearchInput extends StatefulWidget {
  String placeHolder;
  TextEditingController controller ;
  Widget prefixIcon, suffixIcon;
  SearchInput({super.key, required this.placeHolder, required this.controller, required this.prefixIcon, required this.suffixIcon});

  @override
  State<SearchInput> createState() => _SearchInputState(placeHolder,
      controller,prefixIcon,suffixIcon);
}

class _SearchInputState extends State<SearchInput> {

  String placeHolder;
  TextEditingController controller;
  Widget prefixIcon, suffixIcon;
  _SearchInputState(this.placeHolder, this.controller,this.prefixIcon, this.suffixIcon);



  @override
  Widget build(BuildContext context) {


    return Container(
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(

                  controller: controller,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    iconColor: const Color.fromARGB(255, 12, 174, 158),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          strokeAlign: StrokeAlign.center,
                          color: Colors.white10

                      ),

                    ),
                    hintText: placeHolder,

                    hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13
                    ),
                    prefixIcon: Container(
                        padding: const EdgeInsets.all(15),
                        width: 18,
                        child:  prefixIcon
                    ),
                    suffixIcon : Container(

                        padding: const EdgeInsets.all(15),
                        width: 18,
                        child:  InkWell(
                            child : controller.text.isNotEmpty?suffixIcon: const SizedBox(),
                            onTap: () async {
                              controller.clear();
                            }
                        )
                    ),


                  ),
                ),
              ),
              // Container(
              //     margin: EdgeInsets.only (left: 10),
              //     padding: EdgeInsets.all(15),
              //     decoration: BoxDecoration(
              //         color: Theme.of(context).primaryColor,
              //         borderRadius: BorderRadius.circular(15)
              //     ),
              //     child: Image.asset(
              //         'assets/icons/filter.png'),
              //     width: 25
              // ),
            ],
          )
        ],
      ),
    );
  }
}