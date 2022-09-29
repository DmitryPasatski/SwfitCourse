import UIKit



class ThirdViewController: UIViewController {
    
    //MARK: - Views / Buttons

    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!

    var imageViewFirst: UIImageView!
    var imageViewSecond: UIImageView!
    var imageViewThird: UIImageView!
    var count: Int = 1
    
    //MARK: - Let/Var

    let firstImage = UIImage(named: "one")
    let secondImage = UIImage(named: "two")
    let thirdImage = UIImage(named: "three")
    
    let frameCentral = CGRect(x: 7, y: 248, width: 400, height: 400)
    let frameRight = CGRect(x: 500, y: 248, width: 400, height: 400)
    let frameLeft = CGRect(x: -500, y: 248, width: 400, height: 400)
    
    override func viewDidLoad() {
        
        self.imageViewFirst = UIImageView(frame: frameCentral)
        self.imageViewFirst.image = firstImage
        self.view.addSubview(imageViewFirst)
        
        self.imageViewSecond = UIImageView(frame: frameRight)
        self.imageViewSecond.image = secondImage
        self.view.addSubview(imageViewSecond)
        
        self.imageViewThird = UIImageView(frame: frameLeft)
        self.imageViewThird.image = thirdImage
        self.view.addSubview(imageViewThird)
        
        super.viewDidLoad()
        
    }
    //MARK: - Functions / Actions
    
    func nextPicture(){
        if count == 1{
            UIImageView.animate(withDuration: 0.5) {
                self.imageViewFirst.frame = self.frameCentral
            }
        completion: { _  in
                self.imageViewSecond.frame = self.frameRight
                self.imageViewThird.frame = self.frameLeft
            }
           
        }
        if count == 2 {
            UIImageView.animate(withDuration: 0.5) {
                self.imageViewSecond.frame = self.frameCentral
            }
        completion: { _  in
                self.imageViewFirst.frame = self.frameLeft
                self.imageViewThird.frame = self.frameRight
            }
            
        }
        if count == 3 {
            UIImageView.animate(withDuration: 0.5) {
                self.imageViewThird.frame = self.frameCentral
            }
        completion: { _  in
                self.imageViewFirst.frame = self.frameRight
                self.imageViewSecond.frame = self.frameLeft
            }
           
        }
    }
    

    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
        count -= 1
        if count < 1{
            count = 3
        }
        self.nextPicture()
    }
    
    @IBAction func nextButtonPreessed(_ sender: UIButton) {

        count += 1
        if count > 3{
            count = 1 }
        self.nextPicture()

        
    }
    
}

