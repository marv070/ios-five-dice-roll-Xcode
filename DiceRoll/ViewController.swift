//
//  ViewController.swift
//  DiceRoll
//
//  Created by Marvin Laucher on 1/7/18.
//  Copyright © 2018 Marvin Laucher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var firstFromTopImageView: UIImageView!
    
    @IBOutlet weak var secondFromTopImageView: UIImageView!
    
    @IBOutlet weak var thirdFromTopImageView: UIImageView!
    
    @IBOutlet weak var fourthFromTopImageView: UIImageView!
    
    @IBOutlet weak var fifthFromTopImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        let numberOne = arc4random_uniform(6) + 1
        
        let numberTwo = arc4random_uniform(6) + 1
        
        let numberThree = arc4random_uniform(6) + 1
        
        let numberFour = arc4random_uniform(6) + 1
        
        let numberFive = arc4random_uniform(6) + 1
        
        label.text = "The sum is: \(numberOne + numberTwo + numberThree + numberFour + numberFive)"
        
        firstFromTopImageView.image = UIImage(named: "Dice\(numberOne)")
        
        secondFromTopImageView.image = UIImage(named: "Dice\(numberTwo)")
        
        thirdFromTopImageView.image = UIImage(named: "Dice\(numberThree)")
        
        fourthFromTopImageView.image = UIImage(named: "Dice\(numberFour)")
        
        fifthFromTopImageView.image = UIImage(named: "Dice\(numberFive)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

