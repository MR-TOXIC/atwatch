import 'package:at_watch/view/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Apis/ApiURL.dart';
import '../Apis/WebService.dart';

// import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? isChecked = false;
  TextEditingController employeeIdController2 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();

  // void _callWebService(BuildContext context) {
  //   String aa =employeeIdController2.text;
  //   // Define the webServiceResponse function
  //   void webServiceResponse(Map<String, dynamic> jsonResponse, int serviceCounter) {
  //     // Handle the response data here
  //     print(jsonResponse);
  //     final statusCode = jsonResponse['status_code'];
  //     final message = jsonResponse['msg'];
  //     // Accessing user data
  //     final verify_id = jsonResponse['verify_id'];
  //     final phone_no = jsonResponse['phone_no'];
  //
  //     // // Use the data as needed
  //     print('Status code: $statusCode');
  //     print('Message: $message');
  //     print('User Phone No: $phone_no');
  //     print('verify_id : $verify_id');
  //     if(statusCode==200)
  //     {
  //     ///  Navigator.of(context).push(MaterialPageRoute(builder: (context) => EnterOtpScreen.builder(context, phone_no, verify_id,),));
  //
  //     }
  //
  //
  //
  //   }
  //   // Create an instance of the WebService class
  //   WebService webService = WebService(
  //     context: context,
  //     webServiceURL: ApiURL.login,
  //     params: { "user_phone_no":aa},
  //     serviceCounter: 1,
  //     isShow: true,
  //     isShowNoNetwork: true,
  //     webServiceResponse: webServiceResponse,
  //   );
  //   // Call the execute method of the WebService class
  //   webService.execute();
  // }


  @override
  Widget build(BuildContext context) {
    // _callWebService(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(55.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset("assets/images/Logos.png",height: 70,width: 116.77,),
                       SizedBox(height: 70),
                      Text('Welcome!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'FontMain'),
                      ),
                       Text('Enter your login details.',style: TextStyle(fontFamily: 'FontMain',fontSize: 12),),
                       SizedBox(height: 17,),

            Card(
              elevation: 10,
              child: Container(
              padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enter your Employee ID',
                      style: TextStyle(
                        color: Color(0xff696969),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'FontMain',
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                        color: Color(0xffF8F8F8),
                        height: 35,
                        child: TextFormField(
                          cursorRadius: Radius.circular(10),
                          cursorHeight: 10,
                          decoration: InputDecoration(
                            fillColor: Color(0xffF8F8F8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xffDFDFDF),
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(height: 20),

                    const Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xff696969),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'FontMain',
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                        color: Color(0xffF8F8F8),
                        height: 35,
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          cursorRadius: Radius.circular(10),
                          cursorHeight: 10,
                          obscureText: true,
                          decoration: InputDecoration(
                            // isCollapsed: true,
                            fillColor: Color(0xffDFDFDF),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_sharp,
                              size: 13,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xffDFDFDF),
                              ),
                            ),
                          ),
                        )),
                   SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forget Password ?',
                          style: TextStyle(
                              fontFamily: 'FontMain',
                              fontSize: 10,
                              color: Color(0xff696969)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          // side: BorderSide(strokeAlign: BorderSide.strokeAlignOutside),
                          checkColor: Color(0xffDFDFDF),
                          value: isChecked,
                          onChanged: (newBool) {
                            setState(() {
                              isChecked = newBool;
                            });
                          },
                        ),
                        Text(
                          "Remember Me",
                          style: TextStyle(fontSize: 12, fontFamily: 'FontMain'),
                        ),
                      ],
                    ),
                    Container(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFCDB04)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Dashboard()));
                          },
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontFamily: 'FontMain',
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ))),
                      height: 37,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        // color: Color(0xffFCDB04),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // body: SingleChildScrollView(
      //   // physics: BouncingScrollPhysics(),
      //   scrollDirection: Axis.vertical,
      //   child: Center(
      //     child: Container(
      //       padding:  EdgeInsets.only(top: 160),
      //
      //       margin: EdgeInsets.only(bottom: 50),
      //
      //       child: Column(
      //         // mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Image.asset("assets/images/Logos.png",height: 70,width: 116.77,),
      //            SizedBox(height: 65),
      //           Text('Welcome!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'FontMain',),
      //           ),
      //            Text('Enter your login details.',style: TextStyle(fontFamily: 'FontMain',fontSize: 12),),
      //            SizedBox(height: 10,),
      //           Container(
      //             height: 250,
      //             width: 288,
      //             decoration: BoxDecoration(
      //               color: Color(0xffFFFFFF),
      //               borderRadius: BorderRadius.only(
      //                   topRight: Radius.circular(12.0),
      //                   bottomRight: Radius.circular(12.0),
      //                   topLeft: Radius.circular(12.0),
      //                   bottomLeft: Radius.circular(12.0)),
      //             ),
      //             child: Padding(
      //               padding:  EdgeInsets.all(10),
      //               child: Padding(
      //                 padding:  EdgeInsets.only(left: 13),
      //                 child: Padding(
      //                   padding:  EdgeInsets.only(top: 20),
      //                   child: SingleChildScrollView(
      //                     child: Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                        Text(
      //                       'Enter your Employee ID',
      //                       style: TextStyle(
      //                         color: Color(0xff696969),
      //                         fontSize:12,
      //                         fontWeight: FontWeight.bold,
      //                         fontFamily: 'FontMain',
      //                       ),
      //                     ),
      //                      SizedBox(height:3),
      //
      //                     //     Container(
      //                     //   height: 26.34,
      //                     //   width: 234.15,
      //                     //   decoration: BoxDecoration(
      //                     //     borderRadius: BorderRadius.circular(10),
      //                     //     color: Color(0xffDFDFDF),
      //                     //   ),
      //                     // ),
      //                         Container(
      //                             color: Color(0xffF8F8F8),
      //                             height: 26.34,
      //                             width: 234.15,
      //                             child: TextFormField(
      //                               cursorRadius: Radius.circular(10),
      //                               cursorHeight: 10,
      //                               decoration: InputDecoration(
      //                                 fillColor: Color(0xffF8F8F8),
      //                                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
      //                                   borderSide: BorderSide(
      //                                     color: Color(0xffDFDFDF),
      //                                   ),
      //                                 ),
      //                               ),
      //                             )),
      //                     Padding(
      //                       padding: const EdgeInsets.only(top: 20),
      //                         child: Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                           const Text(
      //                           'Password',
      //                           style:
      //                             TextStyle(
      //                             color: Color(0xff696969),
      //                             fontSize:12,
      //                             fontWeight: FontWeight.bold,
      //                               fontFamily: 'FontMain',
      //
      //
      //                           ),
      //                         ),
      //                         const SizedBox(height: 3),
      //                         // Container(
      //                         //   height: 26.34,
      //                         //   width: 234.15,
      //                         //   decoration: BoxDecoration(
      //                         //     borderRadius: BorderRadius.circular(10),
      //                         //     color: Color(0xffDFDFDF),
      //                         //   ),),
      //                           Container(
      //                             color: Color(0xffF8F8F8),
      //                             height: 26.34,
      //                               width: 234.15,
      //                             child: TextFormField(
      //                               textAlign: TextAlign.start,
      //                               textAlignVertical: TextAlignVertical.center,
      //                               cursorRadius: Radius.circular(10),
      //                               cursorHeight: 10,
      //                               obscureText: true,
      //                               decoration: InputDecoration(
      //                                 // isCollapsed: true,
      //                                 fillColor: Color(0xffDFDFDF),
      //                                 suffixIcon: Icon(Icons.remove_red_eye_sharp,size: 13,),
      //                                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
      //                                   borderSide: BorderSide(
      //                                   color: Color(0xffDFDFDF),
      //                                 ),
      //                               ),
      //                             ),
      //                           )),
      //                             Padding(
      //                               padding:  EdgeInsets.only(right: 22),
      //                               child: Row(
      //                                 mainAxisAlignment: MainAxisAlignment.end,
      //                                 children: [
      //                                   Text('forget Password?', style: TextStyle(fontFamily: 'FontMain',fontSize: 10,color: Color(0xff696969)),),
      //                                 ],
      //                               ),
      //                             ),
      //                           ],
      //                               ),
      //                       ),
      //                         Row(
      //                           children: [
      //                             Checkbox(
      //                               // side: BorderSide(strokeAlign: BorderSide.strokeAlignOutside),
      //                               checkColor: Color(0xffDFDFDF),
      //                               value: isChecked,
      //                               onChanged: (newBool) {
      //                                 setState(() {
      //                                   isChecked = newBool;
      //                                 });
      //                               },
      //                             ),
      //                             Text("Remember Me",style: TextStyle(fontSize: 12,fontFamily: 'FontMain'),),
      //                           ],
      //                         ),
      //                     Container(
      //                       child: ElevatedButton(  style: ElevatedButton.styleFrom(
      //                           backgroundColor: Color(0xffFCDB04)),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=> Dashboard()));}, child: Align(alignment: Alignment.center ,child: Text("Login",style: TextStyle(fontFamily: 'FontMain',color: Colors.black,),))),
      //                       height: 29.27,
      //                       width: 234.15,
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.circular(100),
      //                         // color: Color(0xffFCDB04),
      //                       ),),
      //                     ],),
      //                   ),
      //                 ),
      //               ),
      //
      //           ),
      //
      //
      //                 ),
      //
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
