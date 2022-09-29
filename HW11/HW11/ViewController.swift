import UIKit

class ViewController: UIViewController {
var number = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ballInSquareButtonPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func pictureMassiveButtonPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

