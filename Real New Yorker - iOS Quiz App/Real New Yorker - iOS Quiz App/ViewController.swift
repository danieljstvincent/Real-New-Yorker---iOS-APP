//
//  ViewController.swift
//  Real New Yorker - iOS Quiz App
//
//  Created by Daniel St Vincent on 9/3/21.
//

import UIKit
#import <QuartzCore/QuartzCore.h>

class ViewController: UIViewController, QuizProtocol {
    
    var model = QuizModel()
    var questions = Question()
    var currentQuestionIndx = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.delegate = self
        model.getQuestions()
    }
// MARK: - QuizProtocol Methods
    
    func questionRetrieved(_ questions: [Question]) {
        print("questions retrieved form model!")
    }

}

