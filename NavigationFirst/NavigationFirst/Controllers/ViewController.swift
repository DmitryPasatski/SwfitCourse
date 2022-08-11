
import UIKit

class ViewController: UIViewController {
    
    let someText = "I can transit the text!" 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func modelPresentationButtonPressed(_ sender: UIButton) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        self.present(controller, animated: true, completion: nil)
    }
    @IBAction func anyStoryBoardButtonPressed(_ sender: UIButton) {
        let controller = UIStoryboard(name: "Second", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        controller.smallText = someText
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        self.present(controller, animated: true, completion: nil)
    }
    
}

        	
