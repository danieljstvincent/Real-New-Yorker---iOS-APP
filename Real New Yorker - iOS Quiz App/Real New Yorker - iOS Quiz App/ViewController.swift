//
//  ViewController.swift
//  Real New Yorker - iOS Quiz App
//
//  Created by Daniel St Vincent on 9/3/21.
//

import UIKit


class ViewController: UIViewController, QuizProtocol, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var questionLabel: UILabel!
 
    @IBOutlet weak var tableView: UITableView!
    
    var model = QuizModel()
    var questions = [Question]()
    var currentQuestionIndex = 0
    var numCorrect = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set Self as the delegate
        tableView.delegate = self
        tableView.dataSource = self
        
        // Dynamic row heights
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        
        model.delegate = self
        model.getQuestions()
    }
    
    func displayQuestion() {
        
         // Check if there are questions and check that the currentQuestionIndex is not out of bounds
        guard questions.count > 0 && currentQuestionIndex < questions.count else {
            return
        }
        
        questionLabel.text = questions[currentQuestionIndex].question
        
        tableView.reloadData()
    }
    
// MARK: - QuizProtocol Methods
    
    func questionRetrieved(_ questions: [Question]) {
      
        // Get a reference to the questions
        self.questions = questions
        
        //display the first question
        displayQuestion()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Make sure that the questions array actually contains at question
        
        guard  questions.count > 0 else {
            return 0
            
        }
        // Return the number of Questoin for that QUestion
        let currentQuestion = questions[currentQuestionIndex]
        
        if currentQuestion.answers != nil {
            return currentQuestion.answers!.count
        }
        else {
            return 0
        }
    }
    
    // MARK: - UITableView Delegate Methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell", for: indexPath)
        //Customize it
        let label = cell.viewWithTag(1) as? UILabel
        
        if label != nil {
            
            let question = questions[currentQuestionIndex]
            
            if question.answers != nil &&
                indexPath.row < question.answers!.count {
                
                label!.text = question.answers![indexPath.row]
            }
            
        }
        
 return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let question = questions[currentQuestionIndex]
        
        if question.correctAnswerIndex! == indexPath.row {
            print("User got it right")
        }
        else {
            print ("User got it wrong")
        }
        
        currentQuestionIndex += 1
        
        displayQuestion()
    }
}
