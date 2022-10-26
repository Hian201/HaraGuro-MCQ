//
//  Question.swift
//  HaraKuro Test
//
//  Created by yixuan on 2022/10/25.
//

import Foundation
struct Question {
    var question: String
    var options: [String]
}

class questionData {
    var questionContents = [
        Question(question: "我傾向於通過操縱別人，來達成自己的目的。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我通常不會自責或悔恨。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我希望別人仰慕我。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我不太關心自己的行為是否符合道德。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我曾經通過欺詐或撒謊，來達成自己的目的。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我比較冷漠，對他人感受漠不關心。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我曾經通過恭維他人，來達成自己的目的。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我傾向於追求名望或地位。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我傾向於認為人皆自私，我對人性充滿懷疑。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我會利用他人來達成自己的目的。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我期望別人給我特殊優待。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
        Question(question: "我希望別人注意我。", options: ["1.非常不同意","2.比較不同意","3.有點不同意","4.中立","5.有點同意","6.比較同意","7.非常同意"]),
    ]
}
