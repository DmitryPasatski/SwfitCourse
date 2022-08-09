import UIKit

class FourthViewController: UIViewController {
var fourthText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
  }
    @IBAction func nextViewButtonPressed(_ sender: UIButton) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        controller.fifthText = fourthText
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .partialCurl
        self.present(controller, animated: true, completion: nil)
    }
    
}
