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
      
        getLocalJsonFile()
      
    }
    
    func getLocalJsonFile() {
        // Get bundle path to json file
       let path = Bundle.main.path(forResource: "QuestionData", ofType: "json")
        //Double check that the path isn't nil
        guard path != nil else {
            print("Couldn't find the json data file")
            return
        }
        
        //Create URL object from the path
        let url = URL(fileURLWithPath: path!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            let array = try
                decoder.decode([Question].self, from:data)
            
            //Notify the Delegate of the persed objects
            delegate?.questionRetrieved(array)
        }
        catch {
        // Get the data from the url

        }
    }
    func getRemoteJsonFile() {
        
    }

}
