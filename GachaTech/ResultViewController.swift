//
//  ResultViewController.swift
//  GachaTech
//
//  Created by 春田実利 on 2022/05/08.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    var monsterArray: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let number = Int.random(in: 0..<10)
        
        monsterArray = [UIImage(named:"001.png")!,
                        UIImage(named:"002.png")!,
                        UIImage(named:"003.png")!,
                        UIImage(named:"004.png")!,
                        UIImage(named:"005.png")!,
                        UIImage(named:"006.png")!,
                        UIImage(named:"007.png")!,
                        UIImage(named:"008.png")!,
                        UIImage(named:"009.png")!,
                        UIImage(named:"010.png")!]
        
        monsterImageView.image = monsterArray[number]
        
        if number == 9{
            backgroundImageView.image = UIImage(named: "bg_gold.png")
        }else if number > 6{
            backgroundImageView.image = UIImage(named: "bg_red.png")
        }else{
            backgroundImageView.image = UIImage(named: "bg_blue.png")
        }
        
  }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(true)
        let animation = CABasicAnimation(keyPath: "transform")
       
        animation.fromValue = NSNumber(value: 0)
        animation.toValue = NSNumber(value: 2 * Double.pi)
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        animation.duration = 5
        animation.repeatCount = Float.infinity
        backgroundImageView.layer.add(animation, forKey: nil)
    }
    
    @IBAction func backstartpage(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
