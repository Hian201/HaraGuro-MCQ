//
//  QuestionViewController.swift
//  HaraKuro Test
//
//  Created by So í-hian on 2022/10/25.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var optionButtons: [UIButton]!
    @IBOutlet weak var questionNumLabel: UILabel!
    
    //接收從首頁傳來的題目
    var questionArr = [Question]()
    //生成遊戲物件
    let game = Game()
    //分數改變後(didset)顯示到label上
    var score: Int = 0 {
        didSet {
            scoreLabel.text = "\(score)"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupGradientBackground()
        
        //把game物件拿到的題目顯示到對應的outlet
        game.questions = questionArr
        game.updateQuestion()
        game.updateUI(questiontitle: questionLabel, questionNumber: questionNumLabel, optionsButtons: optionButtons)
    }
    
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        if game.questionIndex < 11 {
            switch sender {
            case optionButtons[0]:
                score += 1
            case optionButtons[1]:
                score += 2
            case optionButtons[2]:
                score += 3
            case optionButtons[3]:
                score += 4
            case optionButtons[4]:
                score += 5
            case optionButtons[5]:
                score += 6
            case optionButtons[6]:
                score += 7
            default:
                break
            }
            game.questionIndex += 1
            self.game.updateUI(questiontitle: self.questionLabel, questionNumber: self.questionNumLabel, optionsButtons: self.optionButtons)
        } else {
            self.performSegue(withIdentifier: "Result", sender: nil)
            game.questionIndex = 0
            self.game.updateUI(questiontitle: self.questionLabel, questionNumber: self.questionNumLabel, optionsButtons: self.optionButtons)
        }
    }

  
    @IBSegueAction func showResult(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.finalscore = self.score
        print(score)
        return controller
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
