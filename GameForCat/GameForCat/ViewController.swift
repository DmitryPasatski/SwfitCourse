import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func startGameButtomPressed(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        self.present(controller, animated: true, completion: nil)
    }
    
}

