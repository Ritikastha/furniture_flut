import 'dart:convert';
import 'package:http/http.dart' as http;


class FCMService{
  static const String FCMAPI = "AAAAgRTdoIg:APA91bFrVMli2Ql_l6uRRTFl0kaPuR_Auj_KJdsfuDTmqlOYGMm1icB2VtyFuOCwCTjkCJZL8zV1rGMPV0p6NrRZDKvgo2xztQ8EH80bl5zXJp6vfOuFw3EbN19GugmxTgpi84HMx5IK";
  static String makePayLoadWithToken(String? token,
      Map<String, dynamic> data,
      Map<String, dynamic> notification) {
    return jsonEncode({
      'to': token,
      'data': data,
      'notification': notification,
    });
  }

  static String makePayLoadWithTopic(String? topic,
      Map<String, dynamic> data,
      Map<String, dynamic> notification) {
    return jsonEncode({
      'topic': topic,
      'data': data,
      'notification': notification,
    });
  }

  static Future<void> sendPushMessage(String? token,
      Map<String, dynamic> data,
      Map<String, dynamic> notification) async {
    try {
      await http.post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'key=$FCMAPI'
        },
        body: makePayLoadWithToken(token, data, notification),
      );
      print('FCM request for device sent!');
    } catch (e) {
      print(e);
    }
  }
}