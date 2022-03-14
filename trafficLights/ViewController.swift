//
//  ViewController.swift
//  trafficLights
//
//  Created by Дмитрий Мирошников on 13.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var PressStartButton: UIButton!
    @IBOutlet var RedLight: UIView!
    @IBOutlet var YellowLight: UIView!
    @IBOutlet var GreenLight: UIView!
    
    var nextColor = Colors.red
    
    enum Colors {
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RedLight.layer.cornerRadius = RedLight.layer.bounds.width / 2
        YellowLight.layer.cornerRadius = RedLight.layer.bounds.width / 2
        GreenLight.layer.cornerRadius = RedLight.layer.bounds.width / 2
        
        RedLight.alpha = 0.3
        GreenLight.alpha = 0.3
        YellowLight.alpha = 0.3
    }

    @IBAction func PressButton(_ sender: Any) {
        PressStartButton.setTitle("Next", for: .normal)
        
        switch  nextColor {
        case .red:
            RedLight.alpha = 1
            GreenLight.alpha = 0.3
            nextColor = .yellow
        case .yellow:
            RedLight.alpha = 0.3
            YellowLight.alpha = 1
            nextColor = .green
        case .green:
            GreenLight.alpha = 1
            YellowLight.alpha = 0.3
            nextColor = .red
        }
    }
    
}

