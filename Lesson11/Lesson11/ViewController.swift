import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func anyImagePressed(_ sender: Any) {
        let image = UIImage(named: "ImageSecond")
        self.imageView.image = image
    }
    
    @IBAction func newDeskPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        self.present(controller, animated: true, completion: nil)
    }
}

