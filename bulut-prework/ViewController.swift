//
//  ViewController.swift
//  bulut-prework
//
//  Created by Bulut Gözübüyük on 12/29/24.
//

import UIKit

class ViewController: UIViewController {
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {

        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func changeOtherColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.layer.borderColor = randomColor.cgColor
        view.layer.borderWidth = 15.0
    }
}

