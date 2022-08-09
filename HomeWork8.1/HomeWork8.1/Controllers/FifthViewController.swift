import UIKit

class FifthViewController: UIViewController {
    var fifthText = ""
    //var objectOnFifthVC = ""
    @IBOutlet weak var someTextLabel: UILabel!
    
    override func viewDidLoad() {
        someTextLabel.text = fifthText
       // someTextLabel.text = "\(objectOnFifthVC)"
        super.viewDidLoad()
    }
    @IBAction func backButtonPressed(_ sender: UIButton) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        controller.modalTransitionStyle = .flipHorizontal
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
        
    }
    
}
