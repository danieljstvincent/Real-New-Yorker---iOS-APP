//
//  Question.swift
//  Real New Yorker - iOS Quiz App
//
//  Created by Daniel St Vincent on 9/3/21.
//

import Foundation

struct Question: Codable {
    
    var question:String?
    var answers:[String]?
    var correctAnswerIndex:Int?
    var feedback:String?
}
