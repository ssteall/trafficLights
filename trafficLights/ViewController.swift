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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RedLight.layer.cornerRadius = RedLight.layer.bounds.width / 2
        YellowLight.layer.cornerRadius = 70
        GreenLight.layer.cornerRadius = 70
        
        RedLight.alpha = 0.3
        GreenLight.alpha = 0.3
        YellowLight.alpha = 0.3
    }

    @IBAction func PressButton(_ sender: Any) {
        PressStartButton.setTitle("Next", for: .normal )
        RedLight.alpha = 1
        GreenLight.alpha = 1
        YellowLight.alpha = 1
    }
    
}

