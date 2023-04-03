//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var quizBrain = QuizBrain()
    @IBOutlet weak var quizProgressBar: UIProgressView!
    @IBOutlet weak var quizQuestion: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerValidation(_ sender: UIButton) {
        sender.backgroundColor = quizBrain.validateAnswer(sender.currentTitle!) == true ? UIColor.green : UIColor.red
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.updateUI), userInfo: nil, repeats: false)
    }
    
    @objc private func updateUI(){
        quizQuestion.text = quizBrain.getCurrentQuesion()
        quizProgressBar.progress = Float(quizBrain.getQuestionNumber() + 1) / Float(quizBrain.getTotalQuestions())
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
}

