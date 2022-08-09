
import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var gettingTextLabel: UILabel!
    var smallText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        gettingTextLabel.text = smallText
    }
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
