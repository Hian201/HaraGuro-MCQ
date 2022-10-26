//
//  Game.swift
//  HaraKuro Test
//
//  Created by yixuan on 2022/10/25.
//

import Foundation
import UIKit

class Game {
    var questions: [Question]?
    var question: String?
    var options = [String]()
    
    var questionIndex = 0 {
        didSet {
            updateQuestion()
        }
    }
    
    //更新題目
    func updateQuestion() {
        if let questions {
            question = questions[questionIndex].question
            options = questions[questionIndex].options
        }
    }
    
    //更新畫面
    func updateUI(questiontitle:UILabel?, questionNumber: UILabel, optionsButtons:[UIButton]) {
        questiontitle?.text = question
        questionNumber.text = "#\(questionIndex + 1)"
//        options.shuffle()
        for (i, option) in optionsButtons.enumerated() {
            option.configuration?.attributedTitle = AttributedString(options[i])
        }
    }
}

extension UIViewController{
    func setupGradientBackground() {
         let gradientLayer = CAGradientLayer()
         gradientLayer.frame = view.bounds
         gradientLayer.colors = [
            CGColor(srgbRed: 255, green: 255, blue: 255, alpha: 1),
            CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 1)
         ]
         view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
