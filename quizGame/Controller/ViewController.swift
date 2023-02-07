//
//  ViewController.swift
//  quizGame
//
//  Created by Jesus Gonzalez on 04/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var quizLogic = QuizLogic()
    
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var btnFalse: UIButton!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var btnTrue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    
    @IBAction func btnAnswer(_ sender: UIButton) {
        let userBtnAnswer = sender.currentTitle!
        let trueOrFalseQuestion = quizLogic.checkQuestion(answer: userBtnAnswer)
        
        
        if trueOrFalseQuestion{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:#selector(updateView), userInfo: nil, repeats: false)
        
        quizLogic.nextQuestion()

    }
    
    @objc func updateView () {
        labelText.text = quizLogic.textQuestion()
        btnTrue.backgroundColor = UIColor.clear
        btnFalse.backgroundColor = UIColor.clear
        progressBar.progress = quizLogic.getProgress()
        labelScore.text = "Score: \(quizLogic.scoreProgress())" 
    }
    
    
}

