import 'package:cloud_firestore/cloud_firestore.dart';
class QuestionPaperModel {
  String id;
  String title;
  String? imageUrl;
  String description;
  int timeSeconds;
  List<Questions>? questions;
  int questionCount ;
  QuestionPaperModel(
      {required this.id,
      required this.title,
      this.imageUrl,
      required this.description,
      required this.timeSeconds,
      required this.questionCount,
      this.questions});

  QuestionPaperModel.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    title = json['title'],
    imageUrl = json['image_url'],
    description = json['Description'],
    timeSeconds = json['time_seconds'],
    questionCount = 0,
    questions = (json['questions']as List).map((dynamic e) => Questions.fromJson(e as Map<String,dynamic>)).toList();
   
   QuestionPaperModel.fromSnapShot(DocumentSnapshot<Map<String,dynamic>> json) :
    id = json.id,
    title = json['title'],
    imageUrl = json['image_url'],
    description = json['Description'],
    timeSeconds = json['time_seconds'],
    questionCount = json['question_count'] as int ,
    questions = [];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['image_url'] = imageUrl;
    data['Description'] = description;
    data['time_seconds'] = timeSeconds;    
    return data;
  }
}

class Questions {
  String id;
  String question;
  List<Answers> answers;
  String correctAnswer;

  Questions({required this.id, required this.question, required this.answers, required this.correctAnswer});

  Questions.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    question = json['question'],
    answers =  (json['answers'] as List).map((e) => Answers.fromJson(e)).toList(),
    correctAnswer = json['correct_answer'];
  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['question'] = question;
    data['answers'] = answers;
    data['correct_answer'] = correctAnswer;
    return data;
  }
}

class Answers {
  String identifier;
  String answer;

  Answers({required this.identifier, required this.answer});

  Answers.fromJson(Map<String, dynamic> json) :
    identifier = json['identifier'],
    answer = json['Answer'];
  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['identifier'] = identifier;
    data['Answer'] = answer;
    return data;
  }
}