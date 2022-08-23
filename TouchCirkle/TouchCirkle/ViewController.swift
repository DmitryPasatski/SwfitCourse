import UIKit

class ViewController: UIViewController {
    // MARK: - Let/Var
    let circleView = UIView()
    var location = CGPoint()
    // MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        let recognizer = UILongPressGestureRecognizer(target: self, action: #selector(touchDetected))
        self.view.addGestureRecognizer(recognizer)
        
    }
    // MARK: - Actions
    @IBAction func touchDetected(_ sender: UILongPressGestureRecognizer){
        let touchLocation = sender.location(in: sender.view)
        location = touchLocation
        circleView.frame = CGRect(x: location.x - 50/2, y: location.y - 50/2, width: 50, height: 50)
        circleView.backgroundColor = .red
        circleView.layer.cornerRadius = circleView.frame.size.width/2
        self.view.addSubview(circleView)
        
    }
    // MARK: - Functions
    func createCirckle(){
        circleView.frame = CGRect(x: location.x, y: location.y, width: 50, height: 50)
        circleView.backgroundColor = .red
        circleView.layer.cornerRadius = circleView.frame.size.width/2
        self.view.addSubview(circleView)
    }

}

