//
//  QuizLogic.swift
//  quizGame
//
//  Created by Jesus Gonzalez on 04/02/23.
//

import Foundation

struct QuizLogic {
    
    var questionNumbers = 0
    var dataScore = 0
    
    let questions = [
        QuizObj(question: "El número atómico del litio es 17", answer: "Falso"),
        QuizObj(question: "Un cruce entre un caballo y una cebra se llama Cabce", answer: "Falso"),
        QuizObj(question: "La acrofobia es el miedo al ajo", answer: "Verdadero"),
        QuizObj(question: "El signo zodiacal Acuario está representado por un tigre", answer: "Falso"),
        QuizObj(question: "Marrakech es la capital de Marruecos", answer: "Falso"),
        QuizObj(question: "Waterloo tiene el mayor número de andenes de metro de Londres", answer: "Verdadero"),
        QuizObj(question: "El unicornio es el animal nacional de Escocia", answer: "Verdadero"),
        QuizObj(question: "El rugido de un león puede oírse hasta a ocho kilómetros de distancia", answer: "Verdadero"),
        QuizObj(question: "Navel Cara Cara es un tipo de naranja", answer: "Verdadero"),
        QuizObj(question: "Hay cinco grupos sanguíneos diferentes", answer: "Falso"),
        QuizObj(question: "La batalla de Hastings tuvo lugar en 1066", answer: "Verdadero"),
        QuizObj(question: "H&M son las siglas de Hennes & Mauritz", answer: "Verdadero"),
        QuizObj(question: "La 'CH' vale cuatro puntos en el Scrabble", answer: "Falso"),
        QuizObj(question: "El hueso radio está en la pierna", answer: "Falso"),
        QuizObj(question: "Los peces no pueden parpadear", answer: "Falso"),
        QuizObj(question: "Los peces de colores tienen una memoria de dos segundos", answer: "Falso"),
        QuizObj(question: "Hay 14 huesos en un pie humano", answer: "Falso"),
        QuizObj(question: "En una baraja de cartas, el rey tiene bigote", answer: "Falso"),
        QuizObj(question: "Los hipopótamos sudan una sustancia roja", answer: "Falso"),
        QuizObj(question: "El monte Fuji es la montaña más alta de Japón", answer: "Verdadero"),
    ]
    
    mutating func nextQuestion() {
        if(questionNumbers+1 < questions.count){
            questionNumbers += 1
        }else{
            dataScore = 0
            questionNumbers = 0
        }
    }
    
    func textQuestion() -> String {
        let text = questions[questionNumbers].question
        return String(text)
    }
    
    mutating func checkQuestion (answer: String) -> Bool{
        if(answer == questions[questionNumbers].answer){
            dataScore += 1
            return true
        }else{
            return false
        }
    }
    
    func scoreProgress() -> String{
        return String(dataScore)
    }
    
    func getProgress() -> Float {
        return Float(questionNumbers + 1) / Float(questions.count)
    }
}
