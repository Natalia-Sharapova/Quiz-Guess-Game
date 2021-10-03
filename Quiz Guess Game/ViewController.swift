//
//  ViewController.swift
//  Quiz Guess Game
//
//  Created by Наталья Шарапова on 27.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    //let label = UILabel(frame: CGRect(x: 120, y: 310, width: 200, height: 80))

    override func viewDidLoad() {
        super.viewDidLoad()
    
        label.text = """
            Let's start?
            Click anywhere
            """
        label.alpha = 1
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "Gill Sans", size: 22)
        view.addSubview(label)
        
        UILabel.animate(withDuration: 2, delay: 0, options: [.autoreverse, .repeat, .allowUserInteraction]) {
            self.label.alpha = 0.1
        }
        
    }
   
    @IBAction func gesture(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "Question Segue", sender: nil)
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

}
