// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;
// import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
//
// import 'ApiURL.dart';
//
// class WebService {
//   final BuildContext context;
//   final String webServiceURL;
//   Map<String,dynamic> params;
//   final int serviceCounter;
//   final bool isShow;
//   final bool isShowNoNetwork;
//   final Function(Map<String, dynamic>, int) webServiceResponse;
//
//   WebService({
//     required this.context,
//     required this.webServiceURL,
//     required this.params,
//     required this.serviceCounter,
//     required this.isShow,
//     required this.isShowNoNetwork,
//     required this.webServiceResponse,
//   });
//
//   Future<void> execute() async {
//     SimpleFontelicoProgressDialog dialog = SimpleFontelicoProgressDialog(context: context);
//
//     // Check for network connectivity
//     // var connectivityResult = await (Connectivity().checkConnectivity());
//     // if (connectivityResult == ConnectivityResult.none) {
//     // //  _showPersistentDialog();
//     //   return;
//     //
//     // }
//
//
//     try {
//       var url = Uri.parse(ApiURL.websiteUrl+webServiceURL);
//       final response;
//       if(serviceCounter==2)
//       {
//         response = await http.get(url, headers: _buildRequestHeaders());
//         if(isShow)
//         {
//           showLoding(dialog);
//
//         }
//       }
//       else{
//         response = await http.post(url, headers: _buildRequestHeaders(), body: params,);
//         if(isShow)
//         {
//           showLoding(dialog);
//
//         }
//
//
//       }
//
//       print(ApiURL.websiteUrl+webServiceURL);
//       print("======$params");
//       print("======");
//       print(response.body);
//       print(response.statusCode);
//
//       print("======");
//       //_handleSuccessResponse(response.body);
//       if (response.statusCode == 200) {
//
//         if (response.body != null) {
//           final jsonResponse = jsonDecode(response.body);
//           await Future.delayed(Duration(seconds: 1));
//
//           dialog.hide();
//
//           _handleSuccessResponse2(jsonResponse);
//         } else {
//           dialog.hide();
//           // Handle the case when response body is null
//           _handleErrorResponse(response.statusCode);
//         }
//       } else {
//         dialog.hide();
//         _handleErrorResponse(response.statusCode);
//       }
//
// /*
//       if (response.statusCode == 200) {
//         _handleSuccessResponse(response.body);
//       } else {
//         _handleErrorResponse(response.statusCode);
//       }
// */
//
//     } catch (error,stackTrace) {
//       print('Error: $error');
//       print("Stack trace: $stackTrace");
//       dialog.hide();
//      // throw CacheException();
//
//       // _handleError(error);
//     } finally {
//       dialog.hide();
//       if (isShow) {
//         _dismissProgressDialog();
//       }
//     }
//   }
//
//   Map<String, String> _buildRequestHeaders() {
//     return {
//       // 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
//       // 'device_id': 'device_id_value',
//       // 'app_type': 'WEBSITE_BUILD',
//       // 'device_ip': 'device_ip_value',
//       // 'api_key': 'API_KEY',
//       // 'token': 'TOKEN',
//     };
//   }
//   void showLoding(SimpleFontelicoProgressDialog dialog) async{
//     dialog.show(message: 'Loading...', type: SimpleFontelicoProgressDialogType.spinner,indicatorColor: Colors.yellow);
//     /// await Future.delayed(Duration(seconds: 2));
//   }
//
// /*
//   void _handleSuccessResponse(String responseBody) {
//    // final jsonResponse = jsonDecode(response.body);
//
//     final Map<String, dynamic> jsonMap = jsonDecode(responseBody);
//
//     webServiceResponse(jsonMap, serviceCounter);
//     final statusCode = responseBody['status_code'];
//
//     final String status = jsonMap['status_code'];
//
//     if (status == '0') {
//       _showToast('Token Expired');
//       // Handle token expiration
//     } else {
//       webServiceResponse(jsonMap, serviceCounter);
//     }
//   }
// */
//
//   void _handleErrorResponse(int statusCode) {
//     String message;
//     switch (statusCode) {
//       case 400:
//         message = 'Bad request';
//         break;
//       case 401:
//         message = 'Unauthorized';
//         break;
//       case 403:
//         message = 'Forbidden';
//         break;
//       case 404:
//         message = 'Not found';
//         break;
//       case 500:
//         message = 'Internal server error';
//         break;
//       default:
//         message = 'Error occurred';
//         break;
//     }
//     _showToast(message);
//   }
//
//   void _handleError(dynamic error) {
//     throw Exception();
//     print('Error: $error');
//     _showToast('An error occurred');
//   }
//
//   void _showProgressDialog() {
//     // Implement your progress dialog or loading indicator here
//   }
//
//   void _dismissProgressDialog() {
//     // Dismiss your progress dialog or loading indicator here
//   }
//
//
//   static void _showToast(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.CENTER,
//     );
//   }
//
//   void _handleSuccessResponse2(jsonResponse) {
//     final statusCode = jsonResponse['status_code'];
//
//     if (statusCode == '0') {
//       _showToast('Token Expired');
//       // Handle token expiration
//     } else {
//       webServiceResponse(jsonResponse, serviceCounter);
//     }
//
//   }
//   /*void _showPersistentDialog() {
//     showDialog(
//       context: context,
//       barrierDismissible: false,  // Prevent dialog from being dismissed
//       builder: (BuildContext context) {
//         return WillPopScope(
//           onWillPop: () async => false,  // Prevent back button dismiss
//           child: AlertDialog(
//             title: Row(
//               children: [
//                 Icon(Icons.signal_wifi_connected_no_internet_4_rounded,color: Colors.yellow),
//                 SizedBox(width: 10,),
//                 Text('No Internet Connection',style: TextStyle(color: Colors.yellow)),
//
//               ],
//             ),
//             content: Text('Please check your internet connection and try again.'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () async {
//                   var connectivityResult = await (Connectivity().checkConnectivity());
//                   if (connectivityResult != ConnectivityResult.none) {
//                     Navigator.of(context).pop();  // Close the dialog
//                     execute();  // Retry the request
//                   } else {
//                     _showToast('Still no connection. Please check your internet settings.');
//                   }
//                 },
//                 child: Text('Retry'),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// */
//
//
// }
