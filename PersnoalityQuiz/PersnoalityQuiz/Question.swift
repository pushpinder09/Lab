//
//  Question.swift
//  PersnoalityQuiz
//
//  Created by Student on 05/03/24.
//

import Foundation


struct Question{
    var text :String
    var type : ResponseType
    var answers : [Answer]
}

enum ResponseType
{
    case single , multiple , ranged
}

struct Answer
{
    var text :String
    var type : AnimalType
}

enum AnimalType :Character
{
    case dog = "🐶" , cat = "🐱" , rabbit = "🐰" , chick = "🐥"
    
    
        var definition: String {
            switch self {
            case .dog:
                return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends"
            case .cat:
                return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
            case .rabbit:
                return "You love everything that’s soft. You are healthy and full of energy."
            case .chick:
                return "You are wise beyond your years, and youfocus on the details. Slow and steady wins the race."
            }
        }
    
    
}

var questions: [Question] = [
  Question(
    text: "Which food do you like the most?",
    type: .single,
    answers: [
      Answer(text: "Steak", type: .dog),
      Answer(text: "Fish", type: .cat),
      Answer(text: "Carrots", type: .rabbit),
      Answer(text: "Corn", type: .chick)
    ]
  ),
  Question(
    text: "Which activities do you enjoy?",
    type: .multiple,
    answers: [
      Answer(text: "Swimming", type: .chick),
      Answer(text: "Sleeping", type: .cat),
      Answer(text: "Cuddling", type: .rabbit),
      Answer(text: "Eating", type: .dog)
    ]
  ),
  Question(
    text: "How much do you enjoy car rides?",
    type: .ranged,
    answers: [
      Answer(text: "I dislike them", type: .cat),
      Answer(text: "I get a little nervous", type: .rabbit),
      Answer(text: "I barely notice them", type: .chick),
      Answer(text: "I love them", type: .dog)
    ]
  )
]
