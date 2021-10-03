//
//  File.swift
//  Quiz Guess Game
//
//  Created by Наталья Шарапова on 29.09.2021.
//

import UIKit

struct Question {
    let image: UIImage!
    let answer: [Answer]
    
    static let all: [Question] = [
        
        Question(image: UIImage(named: "image0"), answer: [
       Answer(text: "Myst", correctAnswer: "The Last of us"),
       Answer(text: "Doom", correctAnswer: "The Last of us"),
       Answer(text: "The Last of us", correctAnswer: "The Last of us"),
       Answer(text: "Life is strange", correctAnswer: "The Last of us"),
        ]),
            
        Question(image: UIImage(named: "image1"), answer: [
        Answer(text: "Subnautica", correctAnswer: "Sea of theves"),
        Answer(text: "The little nightmares", correctAnswer: "Sea of theves"),
        Answer(text: "Evil within", correctAnswer: "Sea of theves"),
        Answer(text: "Sea of theves", correctAnswer: "Sea of theves"),
        ]),
        
        Question(image: UIImage(named: "image2"), answer: [
        Answer(text: "Little nightmares", correctAnswer: "Little nightmares"),
        Answer(text:  "Syberia", correctAnswer: "Little nightmares"),
        Answer(text:  "Scratches", correctAnswer: "Little nightmares"),
        Answer(text:  "Farm simulator", correctAnswer: "Little nightmares"),
        ]),
        
        Question(image: UIImage(named: "image3"), answer: [
        Answer(text: "Cooking Simulator", correctAnswer: "Fallout" ),
        Answer(text: "What remains with Edith Finch", correctAnswer: "Fallout"),
        Answer(text: "PUBG", correctAnswer: "Fallout"),
        Answer(text: "Fallout", correctAnswer: "Fallout"),
        ]),
        
        Question(image: UIImage(named: "image4"), answer: [
        Answer(text: "Until dawn", correctAnswer: "Evil within"),
        Answer(text: "S.T.A.L.K.E.R", correctAnswer: "Evil within"),
        Answer(text: "Resident evil", correctAnswer: "Evil within"),
        Answer(text: "Evil within", correctAnswer: "Evil within"),
        ]),
        
        Question(image: UIImage(named: "image5"), answer: [
        Answer(text: "Uncharted", correctAnswer: "Uncharted"),
        Answer(text: "Silent hill", correctAnswer: "Uncharted"),
        Answer(text: "Call of Cthulhu", correctAnswer: "Uncharted"),
        Answer(text: "Vanishing of Ethan Carter", correctAnswer: "Uncharted"),
        ]),
        
        Question(image: UIImage(named: "image6"), answer: [
        Answer(text: "Myst", correctAnswer: "Hitman"),
        Answer(text: "WarFace", correctAnswer: "Hitman"),
        Answer(text: "Scratches", correctAnswer: "Hitman"),
        Answer(text: "Hitman", correctAnswer: "Hitman"),
        ]),
            
        Question(image: UIImage(named: "image7"), answer: [
        Answer(text: "Outlast", correctAnswer: "Human fall flat"),
        Answer(text: "Party animals", correctAnswer: "Human fall flat"),
        Answer(text: "Human fall flat", correctAnswer: "Human fall flat"),
        Answer(text: "Max Payne", correctAnswer: "Human fall flat"),
        ]),
        
        Question(image: UIImage(named: "image8"), answer: [
        Answer(text: "Half-Life 2", correctAnswer: "Need for speed"),
        Answer(text: "Forza Horizon 2", correctAnswer: "Need for speed"),
        Answer(text: "Heavy Rain", correctAnswer: "Need for speed"),
        Answer(text: "Need for speed", correctAnswer: "Need for speed"),
        ]),
    
        Question(image: UIImage(named: "image9"), answer: [
    
        Answer(text: "Cyberpunk", correctAnswer: "Party animals"),
        Answer(text: "World of Tanks", correctAnswer: "Party animals"),
        Answer(text: "Pummel Party", correctAnswer: "Party animals"),
        Answer(text: "Party animals", correctAnswer: "Party animals"),
       ])
       ]
}
