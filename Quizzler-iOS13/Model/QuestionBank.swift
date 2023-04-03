//
//  QuestionBank.swift
//  Quizzler-iOS13
//
//  Created by Rasaal Ahmad on 03/04/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuestionBank{
    var question:String
    var answer:String
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
}
