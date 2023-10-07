//
//  Trivia.swift
//  Trivia
//
//  Created by Yvonne Ariri on 10/6/23.
//

import UIKit

struct Question {
    let type: String
    let text: String
    let answers: [String]
    let correctAnswerIndex: Int
}

let questions: [Question] = [
    Question(type: "Entertainment: Music",
             text: "Which artist released the album 'Thriller'?",
             answers: ["Madonna", "Michael Jackson", "Prince", "Whitney Houston"],
             correctAnswerIndex: 2),
    Question(type: "Movies",
             text: "Who directed the movie 'Pulp Fiction'?",
             answers: ["Quentin Tarantino", "Martin Scorsese", "Steven Spielberg", "Christopher Nolan"],
             correctAnswerIndex: 0),
    Question(type: "History",
             text: "Who wrote the play 'Romeo and Juliet'?",
             answers: ["William Shakespeare", "Jane Austen", "Charles Dickens", "Leo Tolstoy"],
             correctAnswerIndex: 0)
]
