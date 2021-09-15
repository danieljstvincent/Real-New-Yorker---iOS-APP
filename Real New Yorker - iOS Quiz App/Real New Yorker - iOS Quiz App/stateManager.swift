//
//  stateManager.swift
//  Real New Yorker - iOS Quiz App
//
//  Created by Daniel St Vincent on 9/15/21.
//

import Foundation

class StateManager {
    
    static var numCorrectKey = "NumberCorrectKey"
    static var questionIndexKey = "QuestionKey"
    
    static func saveState(numCorrect:Int, questionIndex: Int) {
        
        // Get a reference to user defaults
        let defaults = UserDefaults.standard
        
        // Set the state data
        defaults.set(numCorrect, forKey: numCorrectKey )
        defaults.set(questionIndex, forKey: questionIndexKey)
    }
    
    static func retrieveValue(key:String) -> Any? {
        
        //Get a reference to user defaults
        let defaults = UserDefaults.standard
        
        return defaults.value(forKey: key)
    }

    static func clearState() {
        let defaults = UserDefaults.standard
        
        defaults.removeObject(forKey: numCorrectKey)
        defaults.removeObject(forKey: questionIndexKey)
    }
    

}
