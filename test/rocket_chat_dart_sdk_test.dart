import 'package:rocket_chat_dart_sdk/rocket_chat_dart_sdk.dart';
import 'package:rocket_chat_dart_sdk/src/auth/auth.dart';
import 'package:rocket_chat_dart_sdk/src/auth/auth_interceptor.dart';
import 'package:rocket_chat_dart_sdk/src/models/authentication/login.dart';
import 'package:rocket_chat_dart_sdk/src/models/chat/send_message.dart';
import 'package:test/test.dart';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final logger = Logger();

void main() {
  test('testLogin', () async {

    var client = RocketChatClient.instance('http://rcshared.yellcluster.thg.life');

    var loginResult = await client.restClient.login(LoginRequest('graham', 'password'));

    var me = loginResult.data.me;

  });

  test('send messages into chat', () async {

    var client = RocketChatClient.instance('http://rcshared.yellcluster.thg.life');

    await client.restClient.login(LoginRequest('graham', 'password'));

    var rooms = client.restClient.getRooms();

    // var now = DateTime.now().subtract(Duration(seconds: 10));

    // var olderTime = now.subtract(Duration(seconds: 20));

    // await client.restClient.sendChatMessage(SendMessageRequest(Message('bGPhqX2Qe8sDsvLrS', 'Test 2 now message 1 at ' + now.toIso8601String(), now.toIso8601String())));
    // await client.restClient.sendChatMessage(SendMessageRequest(Message('bGPhqX2Qe8sDsvLrS', 'Test 2 older message ' + olderTime.toIso8601String(), olderTime.toIso8601String())));
    // await client.restClient.sendChatMessage(SendMessageRequest(Message('bGPhqX2Qe8sDsvLrS', 'Test 2 now message 2 at ' + now.toIso8601String(), now.toIso8601String())));

    var i = 0;

  });
}
