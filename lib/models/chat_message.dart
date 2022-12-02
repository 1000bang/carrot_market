import 'package:flutter/material.dart';

class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri; //nullable

  ChatMessage(
      {required this.sender,
      required this.profileImage,
      required this.location,
      required this.sendDate,
      required this.message,
      this.imageUri});
}

//샘플데이터

List<ChatMessage> chatMessageList = [
  ChatMessage(
    sender: "김로봇",
    profileImage: "https://placeimg.com/200/100/people",
    location: "분당",
    sendDate: "2일전",
    message: "직거래 가능?",
  ),
  ChatMessage(
    sender: "이사과",
    profileImage: "https://placeimg.com/200/100/people",
    location: "중동",
    sendDate: "3일전",
    message: "구매 가능할까요?",
    imageUri :  "https://placeimg.com/200/100/people/greyscale",
  ),
  ChatMessage(
    sender: "1000bang",
    profileImage: "https://raw.githubusercontent.com/1000bang/repoTest/main/son.gif",
    location: "분당",
    sendDate: "2일전",
    message: "직거래 가능?",
  ),

];
