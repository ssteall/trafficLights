//
//  ViewController.swift
//  trafficLights
//
//  Created by Дмитрий Мирошников on 13.03.2022.
//

import UIKit

enum Colors {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet var pressStartButton: UIButton!
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    private var nextColor = Colors.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        greenLight.alpha = 0.3
        yellowLight.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.layer.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
    
    @IBAction func nextButtonPressed() {
        if pressStartButton.currentTitle == "START" {
            pressStartButton.setTitle("Next", for: .normal)
        }
        
        switch  nextColor {
        case .red:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            nextColor = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            nextColor = .green
        case .green:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            nextColor = .red
        }
    }
}

