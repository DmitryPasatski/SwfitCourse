import UIKit

class ThirdViewController: UIViewController {
var thirdText = ""
    override func viewDidLoad() {
        super.viewDidLoad()

}
    @IBAction func nextViewButtonPressed(_ sender: UIButton) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        controller.fourthText = thirdText
        controller.modalTransitionStyle = .flipHorizontal
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
}
