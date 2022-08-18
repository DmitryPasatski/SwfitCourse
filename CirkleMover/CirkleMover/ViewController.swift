import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var viewForSwipes: UIView!
    
    // MARK: - Labels / Buttons
    @IBOutlet weak var messeges: UILabel!
    @IBOutlet weak var upButton: UIButton!
    
    // MARK: - Enum
    enum Direction: String {
        case left = "left"
        case right = "right"
        case up = "up"
        case down = "down"
    }
    // MARK: - Let/var
    var cirkle = UIView()
    let step = CGFloat(20)
    let indent = CGFloat(10)
    // MARK: - Override
    override func viewDidLoad() {
        createCirkle()
        super.viewDidLoad()
        
        let leftSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(leftSwipeDetected))
        leftSwipeRecognizer.direction = .left
        self.view.addGestureRecognizer(leftSwipeRecognizer)
        
        let rightSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(rightSwipeDetected))
        rightSwipeRecognizer.direction = .right
        self.view.addGestureRecognizer(rightSwipeRecognizer)
        
        let upSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(upSwipeDetected))
        upSwipeRecognizer.direction = .up
        self.view.addGestureRecognizer(upSwipeRecognizer)
        
        let downSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(downSwipeDetected))
        downSwipeRecognizer.direction = .down
        self.view.addGestureRecognizer(downSwipeRecognizer)
        
    }
    // MARK: - Functions
    
    private  func createCirkle() {
        cirkle.frame = CGRect(x: 187, y: 374, width: 40, height: 40)
        cirkle.backgroundColor = .darkGray
        self.view.addSubview(cirkle)
        cirkle.layer.cornerRadius = cirkle.frame.size.width/2
    }
    
    
    private func move(direction: Direction){
        switch direction {
        case .left:
            if  self.cirkle.frame.origin.x >= indent{
                self.cirkle.frame.origin.x -= step
                messeges.text = "Moving \(direction.rawValue)"
            } else {
                messeges.text = "Moving is impossible!"
            }
        case .right:
            if  self.cirkle.frame.origin.x <= view.frame.size.width - cirkle.frame.size.width - indent{
                self.cirkle.frame.origin.x += step
                messeges.text = "Moving \(direction.rawValue)"
            }else {
                messeges.text = "Moving is impossible!"
            }
        case .up:
            if  self.cirkle.frame.origin.y >= 44 + indent{
                self.cirkle.frame.origin.y -= step
                messeges.text = "Moving \(direction.rawValue)"
            }else {
                messeges.text = "Moving is impossible!"
            }
        case .down:
            if  self.cirkle.frame.origin.y <= upButton.frame.origin.y - cirkle.frame.size.height - indent {
                self.cirkle.frame.origin.y += step
                messeges.text = "Moving \(direction.rawValue)"
            }else {
                messeges.text = "Moving is impossible!"
            }
        }
        
    }
    
    
    // MARK: - Actions
    
    @IBAction func circkleUP(_ sender: UIButton) {
        self.move(direction: .up)
    }
    @IBAction func circleDown(_ sender: UIButton) {
        self.move(direction: .down)
    }
    @IBAction func circkleLeft(_ sender: UIButton) {
        self.move(direction: .left)
    }
    @IBAction func cirkleRight(_ sender: UIButton) {
        self.move(direction: .right)
    }
    @IBAction func leftSwipeDetected(){
        cirkle.frame.origin.x -= step
    }
    @IBAction func rightSwipeDetected(){
        cirkle.frame.origin.x += step
    }
    @IBAction func upSwipeDetected(){
        cirkle.frame.origin.y -= step
    }
    @IBAction func downSwipeDetected(){
        cirkle.frame.origin.y += step
    }
}
