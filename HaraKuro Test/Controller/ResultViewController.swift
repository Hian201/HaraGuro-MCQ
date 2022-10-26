//
//  ResultViewController.swift
//  HaraKuro Test
//
//  Created by So í-hian on 2022/10/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var finalscore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showResult()
        setupGradientBackground()
    }
    
    func showResult() {
        if let finalscore {
            scoreLabel.text = "\(finalscore)"
            switch finalscore {
            case 36..<40:
                resultLabel.text = "自戀:特別自負且有優越感，認為自己高人一等，應該要享受比別人更好的待遇。"
            case 40..<45:
                resultLabel.text = "心理變態:高度衝動、追求刺激且缺乏同理心，無法感知別人的情緒。就算看到別人滿臉痛苦，你也沒有感覺。"
            case 46..<84:
                resultLabel.text = "馬基維利主義:認為成功的關鍵在於操縱、利用他人，為達目的不擇手段、不講道德與原則。同時認為人都是自私自利的，不相信人是善良與美好的。"
            default:
                resultLabel.text = "有誠實作答嗎？"
            }
        }
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
