//
//  ResultViewController.swift
//  Real New Yorker - iOS Quiz App
//
//  Created by Daniel St Vincent on 9/11/21.
//

import UIKit

protocol ResultViewControllerProtocol {
    func dialogDismissed()
}

class ResultViewController: UIViewController {

    @IBOutlet weak var dimView: UIView!
    
    @IBOutlet weak var dialogView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var FeedbackLabel: UILabel!
    
    @IBOutlet weak var NextButton: UIButton!
    
    var titleText = ""
    var feedbackText = ""
    var buttonText = ""
    
    var delegate:ResultViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        titleLabel.text = titleText
        FeedbackLabel.text = feedbackText
        NextButton.setTitle(buttonText, for: .normal)
    }
    
    override func viewWillLayoutSubviews() {
        titleLabel.text = titleText
        FeedbackLabel.text = feedbackText
        NextButton.setTitle(buttonText, for: .normal)
    }

    
    @IBAction func dismissTapped(_ sender: Any) {
        // dismiss the popup
        dismiss(animated: true, completion: nil)
        
        // Notify delegate the popup was dismissed
        delegate?.dialogDismissed()
    }
}
