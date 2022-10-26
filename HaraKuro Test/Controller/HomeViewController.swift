//
//  HomeViewController.swift
//  HaraKuro Test
//
//  Created by So í-hian on 2022/10/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    //裝資料用
    let questions = questionData()
    //裝題目用陣列
    var questionArr = [Question]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientBackground()
        // Do any additional setup after loading the view.
    }
    
    //unwind segue, 從結果返回首頁，不傳遞數據所以括號留空
    @IBAction func unwindToHomeViewController(_ unwindSegue: UIStoryboardSegue){}

    
    //傳遞資料
    @IBSegueAction func passQuestions(_ coder: NSCoder) -> QuestionViewController? {        //題目順序隨機化後加入陣列
        questions.questionContents.shuffle()
        for quiz in 0...11 {
            questionArr.append(questions.questionContents[quiz])
        }
        //宣告傳遞目標的controller，然後傳過去
        let controller = QuestionViewController(coder: coder)
        controller?.questionArr = questionArr
        //傳過去後清除陣列，防止內容累加
        questionArr.removeAll()
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
