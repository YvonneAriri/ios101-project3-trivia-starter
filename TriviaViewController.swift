import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var TypeLabel: UILabel!
    @IBOutlet weak var QuestionCountLabel: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var AnswerFourButton: UIButton!
    @IBOutlet weak var AnswerThreeButton: UIButton!
    @IBOutlet weak var AnswerTwoButton: UIButton!
    @IBOutlet weak var AnswerOneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayQuestion()
        
    }
    var currentQuestionIndex = 0

    func displayQuestion() {
        let currentQuestion = questions[currentQuestionIndex]
        QuestionLabel.text = currentQuestion.text
        TypeLabel.text = currentQuestion.type
        AnswerOneButton.setTitle(currentQuestion.answers[0], for: .normal)
        AnswerTwoButton.setTitle(currentQuestion.answers[1], for: .normal)
        AnswerThreeButton.setTitle(currentQuestion.answers[2], for: .normal)
        AnswerFourButton.setTitle(currentQuestion.answers[3], for: .normal)
        
        let questionNumber = currentQuestionIndex + 1
        let totalQuestions = questions.count
        QuestionCountLabel.text = "Question: \(questionNumber)/\(totalQuestions)"
    }
    @IBAction func answerButtonTapped(_ sender: UIButton) {
            currentQuestionIndex += 1

            if currentQuestionIndex < questions.count {
                displayQuestion()
            }
        }

}
