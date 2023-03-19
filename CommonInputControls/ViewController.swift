//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Сергей Розов on 17.01.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var toggle: UISwitch!
    
    @IBOutlet var slider: UISlider!
        
    @IBOutlet var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        
        if toggle.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
        
        print("The slider is set to \(slider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("The slider is set to \(sender.value)")
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    

}

