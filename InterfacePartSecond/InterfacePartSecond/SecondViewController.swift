import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var topLabelConstraint: NSLayoutConstraint!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func upButtonPressed(_ sender: Any) {
        self.topLabelConstraint.constant += 100
        self.view.layoutIfNeeded()
    }
    @IBAction func downButtonPressed(_ sender: Any) {
        self.topLabelConstraint.constant -= 100
        self.view.layoutIfNeeded()
    }
    
}
