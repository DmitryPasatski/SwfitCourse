import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabelConstrain: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextButtonPressed(_ sender: UIButton) {
        self.topLabelConstrain.constant += 100
        self.view.layoutIfNeeded()
    }
    @IBAction func previousButtonPressed(_ sender: Any) {
        self.topLabelConstrain.constant -= 100
        self.view.layoutIfNeeded()
    }
    
    
}

