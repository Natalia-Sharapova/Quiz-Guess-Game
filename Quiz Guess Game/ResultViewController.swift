//
//  ResultViewController.swift
//  Quiz Guess Game
//
//  Created by Наталья Шарапова on 03.10.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var countResult: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        countResult.frame = CGRect(x: view.bounds.midX - 50, y: 340, width: 100, height: 40)
        descriptionLabel.frame = CGRect(x: view.bounds.midX - 250, y: 400, width: 500, height: 40)
        
        descriptionLabel.tintColor = .black
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = UIFont(name: "Gill Sans", size: 28)
        
        resultLabel.tintColor = .black
        resultLabel.font = UIFont(name: "Gill Sans", size: 28)
        
        countResult.textAlignment = .center
        countResult.tintColor = .black
        countResult.font = UIFont(name: "Gill Sans", size: 28)
        
        switch correctAnswersAll {
        case 0...4:
            countResult.text = "\(correctAnswersAll) 😕"
            descriptionLabel.text = "You don't really like games, do you?"
        case 5...9:
            countResult.text = "\(correctAnswersAll) 😎"
            descriptionLabel.text = "You almost did it!"
        default:
            countResult.text = "\(correctAnswersAll) 💯"
            descriptionLabel.text = "Wow! Excellent result!"
        }
    }
}
