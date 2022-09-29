import UIKit

enum Direction {
    case down
    case right
    case up
    case left
}

class SecondViewController: UIViewController {
    
    //MARK: - Let/Var
    
    private let distanceWidth: CGFloat = 320
    private let distanceHeight: CGFloat = 600
    private var direction: Direction = .down
    private var animation: Bool = false
    
    //MARK: - Buttons/Views
    
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var movingView: UIView!
    
    
    override func viewDidLoad() {
        movingView.frame = CGRect(x: 20, y: 100, width: 60, height: 60)
    }
    //MARK: - Functions
    
    private func movingCircle(){
        if animation == true{
            UIView.animate(withDuration: 0.5) {
                self.changeDirection()
            } completion: { _  in
                self.movingCircle()
            }
        } else {
            return
        }
    }
    
    private func changeDirection(){
        switch direction {
        case .down:
            self.movingView.frame.origin.y += self.distanceHeight
            direction = .right
            return
        case .right:
            self.movingView.frame.origin.x += self.distanceWidth
            direction = .up
            return
        case .up:
            self.movingView.frame.origin.y -= self.distanceHeight
            direction = .left
            return
        case .left:
            self.movingView.frame.origin.x -= self.distanceWidth
            direction = .down
            return
        }
    }
    //MARK: - Actions
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        animation = true
        direction = .down
        movingCircle()
        startButton.isHidden = true
        stopButton.isHidden = false
    }
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        animation = false
        movingView.frame = CGRect(x: 20, y: 100, width: 60, height: 60)
        startButton.isHidden = false
        stopButton.isHidden = true
    }
}

