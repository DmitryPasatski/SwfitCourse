import UIKit

class ViewController: UIViewController {

    let firstText = "You can read me only on view N:5!"
    let objectOnFirstVC = Custom(name: "First", weight: 100, height: 80)
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func nextViewButtonPressed(_ sender: UIButton) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .coverVertical
        controller.secondText = firstText
        controller.objectOnSecondVC = objectOnFirstVC
        self.present(controller, animated: true, completion: nil)
    }
    

}

