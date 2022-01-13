//
//  BuyNewScooterOrBikeVC.swift
//  NavigationTest
//
//  Created by Flo Lupascu on 07/12/2021.
//

import UIKit

class BuyNewScooterOrBikeVC: UIViewController {
    
    @IBOutlet var receivedValueLabel: UILabel!
    
    var receivedValueFromHomeScreen = String()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Selected index: \(self.tabBarController?.selectedIndex ?? -1)")
        
        if self.tabBarController?.selectedIndex == 1 {
            receivedValueLabel.text = "Value received for Scooters: \n" + receivedValueFromHomeScreen
            self.navigationItem.title = "Buy a Scooter"
        }

        if self.tabBarController?.selectedIndex == 2 {
            receivedValueLabel.text = "Value received for Bicycles: \n" + receivedValueFromHomeScreen
            self.navigationItem.title = "Buy a Bicycle"
        }
    }
}
