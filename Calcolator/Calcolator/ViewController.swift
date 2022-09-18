import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var results: UILabel!
    var numberFromScreen:Double = 0
    var firstNum:Double = 0
    var mathSign:Bool = false
    var operation:Int  = 0
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var buttonPlusMinus: UIButton!
    @IBOutlet weak var buttonPersent: UIButton!
    @IBOutlet weak var buttonDevide: UIButton!
    @IBOutlet weak var buttonMultiply: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonEquals: UIButton!
    @IBOutlet weak var buttonPoint: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonAC.layer.cornerRadius = buttonAC.frame.size.width/2
        buttonPlusMinus.layer.cornerRadius = buttonPlusMinus.frame.size.width/2
        buttonPersent.layer.cornerRadius = buttonPersent.frame.size.width/2
        buttonDevide.layer.cornerRadius = buttonDevide.frame.size.width/2
        buttonMultiply.layer.cornerRadius = buttonMultiply.frame.size.width/2
        buttonMinus.layer.cornerRadius = buttonMinus.frame.size.width/2
        buttonPlus.layer.cornerRadius = buttonPlus.frame.size.width/2
        buttonEquals.layer.cornerRadius = buttonEquals.frame.size.width/2
        buttonPoint.layer.cornerRadius = buttonPoint.frame.size.width/2
        buttonOne.layer.cornerRadius = buttonOne.frame.size.width/2
        buttonTwo.layer.cornerRadius = buttonTwo.frame.size.width/2
        buttonThree.layer.cornerRadius = buttonThree.frame.size.width/2
        buttonFour.layer.cornerRadius = buttonFour.frame.size.width/2
        buttonFive.layer.cornerRadius = buttonFive.frame.size.width/2
        buttonSix.layer.cornerRadius = buttonSix.frame.size.width/2
        buttonSeven.layer.cornerRadius = buttonSeven.frame.size.width/2
        buttonEight.layer.cornerRadius = buttonEight.frame.size.width/2
        buttonNine.layer.cornerRadius = buttonNine.frame.size.width/2
        buttonZero.layer.cornerRadius = buttonZero.frame.size.height/2
        
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        if mathSign == true {
            results.text = String(sender.tag)
            mathSign = false
        }
        else {
            results.text = results.text! + String(sender.tag)
        }
        
        numberFromScreen = Double(results.text!)!
    }
    
    @IBAction func simbiols(_ sender: UIButton) {
        if results.text != "" && sender.tag != 16 && sender.tag != 11{
            firstNum = Double(results.text!)!
            if sender.tag == 12  {
                results.text = "+"
            } // plus
            else if sender.tag ==  13 {
                results.text = "-"
            } // minus
            else if sender.tag ==  14 {
                results.text = "*"
            } //multiply
            else if sender.tag ==  15 {
                results.text = "/"
            } // divide
            operation = sender.tag
            mathSign = true
        }
        else if sender.tag == 11 {
            if operation == 15 {
                results.text = String(firstNum / numberFromScreen)
            }
            else if operation == 14{
                results.text = String(firstNum * numberFromScreen)
            }
            else if operation == 13{
                results.text = String(firstNum - numberFromScreen)
            }
            else if operation == 12{
                results.text = String(firstNum + numberFromScreen)
            }
        }
        else if sender.tag == 16{
            results.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
}


