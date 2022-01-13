//
//  ScooterOrBikeLastVC.swift
//  NavigationTest
//
//  Created by Florentin on 13/01/2022.
//

import UIKit

class ScooterOrBikeLastVC: UIViewController {

    @IBAction func saveBtnTapped(_ sender: UIButton) {
        
        // Navigate to Home Screen
        // self.parent?.navigationController?.popToRootViewController(animated: true) // if I use this line then when I click on the same Tab Bar is sending me to the last screen and I want to be on the first screen of that navigation workflow
        self.navigationController?.popToRootViewController(animated: true) // If I use this line when I click Save btn I don't see anymore the icons on Tab Bar Controller
        self.tabBarController?.selectedIndex = 0
    }
}
