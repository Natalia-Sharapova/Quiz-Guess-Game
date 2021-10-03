//
//  QuestionViewController.swift
//  Quiz Guess Game
//
//  Created by Наталья Шарапова on 28.09.2021.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var imageQuestionView: UIImageView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet var buttons: [UIButton]!
    
    
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    
    var questionIndex = 0
    var correctAnswersAll = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.frame = CGRect(x: view.bounds.midX - 170, y: 390, width: 340, height: 50)
        button2.frame = CGRect(x: view.bounds.midX - 170, y: 460, width: 340, height: 50)
        button3.frame = CGRect(x: view.bounds.midX - 170, y: 530, width: 340, height: 50)
        button4.frame = CGRect(x: view.bounds.midX - 170, y: 600, width: 340, height: 50)
       
        nextQuestionButton.frame = CGRect(x: 235, y: 680, width: 150, height: 40)
    
        for button in buttons {
            button.backgroundColor = .gray
            button.alpha = 0.7
            button.layer.cornerRadius = 20
            button.tintColor = .white
            button.titleLabel?.font = UIFont(name: "Gill Sans", size: 20)
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.white.cgColor
        }
        
        nextQuestionButton.backgroundColor = .gray
        nextQuestionButton.alpha = 0.7
        nextQuestionButton.layer.cornerRadius = 20
        nextQuestionButton.tintColor = .black
        nextQuestionButton.layer.borderWidth = 1
        nextQuestionButton.layer.borderColor = UIColor.white.cgColor
        nextQuestionButton.setTitle("Next question ->", for: .normal)
       
        updateUI()
    }
    
    func updateUI () {
        
        for button in buttons {
        button.backgroundColor = .gray
        }
        let question = Question.all[questionIndex]
        let answer = question.answer
        
        let totalProgress = Float(questionIndex) / Float(Question.all.count)
        navigationItem.title = "Question # \(questionIndex + 1)"
        imageQuestionView.image = question.image
        progressView.setProgress(totalProgress, animated: true)
        
        for (button, answer) in zip(buttons, answer) {
            button.setTitle(answer.text, for: [])
        }
    }
    
    func nextQuestion () {
        
        for button in buttons {
            button.isEnabled = true
        }
        questionIndex = (questionIndex + 1) % Question.all.count
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let answer = Question.all[questionIndex].answer
        let index = sender.tag
        
         /*guard 0 <= questionIndex && questionIndex <= answer.count else {
                return
            }*/
               if sender.currentTitle == (answer[index].correctAnswer) {
                
                correctAnswersAll += 1
                
                sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
                UIButton.animate(withDuration: 2, delay: 0, usingSpringWithDamping: CGFloat(0.20),
                                 initialSpringVelocity: CGFloat(6.0), options: UIButton.AnimationOptions.allowUserInteraction,
                               animations: {
                               sender.transform = CGAffineTransform.identity
                               sender.backgroundColor = .green
                               }
                               )
                for button in buttons {
                    if button.currentTitle != (answer[index].correctAnswer) {
                        button.isEnabled = false
                    }
                }
               
                print(correctAnswersAll)
               } else {
                sender.backgroundColor = .red
                for button in buttons {
                    if button.currentTitle == (answer[index].correctAnswer) {
                        button.backgroundColor = .green
                    }
                    if button.currentTitle != (answer[index].correctAnswer) {
                        button.isEnabled = false
                }
                }
                    }
                print("incorrect answer")
    }

    @IBAction func ddd() {
    nextQuestion()
    }


    


    




}
