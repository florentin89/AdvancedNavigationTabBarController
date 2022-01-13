//
//  BuyNewCarVC.swift
//  NavigationTest
//
//  Created by Florentin on 13/01/2022.
//

import UIKit

class BuyNewCarVC: UIViewController {
    
    var valueReceivedFromHomeScreen = String()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Selected index: \(self.tabBarController?.selectedIndex ?? -1)")
        print("CarsScreen - Value received from HomeScreen: \(valueReceivedFromHomeScreen)")
    }
    
    @IBAction func saveBtnTapped(_ sender: UIButton) {
        
        // Navigate to Home Screen
        self.navigationController?.popToRootViewController(animated: true)
        self.tabBarController?.selectedIndex = 0
    }
}
