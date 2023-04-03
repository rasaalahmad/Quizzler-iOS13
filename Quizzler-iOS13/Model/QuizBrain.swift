//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Rasaal Ahmad on 03/04/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    private let quiz = [
        QuestionBank(question: "Two + Two Equals Four",answer: "True"),
        QuestionBank(question: "Three is greater than five",answer: "False"),
        QuestionBank(question: "Four + Four is not equals to seven",answer: "True")
    ]
    private var currentQuestion = 0
    
    mutating func validateAnswer(_ answer:String) -> Bool{
        var result = quiz[currentQuestion].answer == answer
        updateCurrentQuestion()
        return result
    }
    
    mutating func updateCurrentQuestion()
    {
        if currentQuestion + 1 < quiz.count {
            currentQuestion += 1
        }
        else{
            currentQuestion = 0
        }
    }
    
    func getCurrentQuesion()->String{
        return quiz[currentQuestion].question
    }
    
    func getQuestionNumber()->Int{
        return currentQuestion
    }
    
    func getTotalQuestions()->Int{
        return quiz.count
    }
    
}
