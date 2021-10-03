//
//  ResultViewController.swift
//  Quiz Guess Game
//
//  Created by Наталья Шарапова on 03.10.2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.backgroundColor = .gray
        resultLabel.layer.cornerRadius = 20
        resultLabel.tintColor = .black
        resultLabel.layer.borderWidth = 1
        resultLabel.layer.borderColor = UIColor.white.cgColor
        
    }
}
