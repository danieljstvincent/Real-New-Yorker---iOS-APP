//
//  QuizModel.swift
//  Real New Yorker - iOS Quiz App
//
//  Created by Daniel St Vincent on 9/3/21.
//

import Foundation

protocol QuizProtocol {
    
    func questionRetrieved(_ questions:[Question])
}

class QuizModel {
    
    var delegate: QuizProtocol?
    
    func getQuestions(){
        
        // TODOL Fetch the questions
        // Notify the delegate of the retrieved questions
        delegate?.questionRetrieved([Question]())
    }
}
