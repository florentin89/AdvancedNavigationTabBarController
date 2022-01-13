//
//  HomeVC.swift
//  NavigationTest
//
//  Created by Flo Lupascu on 07/12/2021.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet var textfieldHoldingScootersValue: UITextField!
    @IBOutlet var textfieldHoldingBicyclesValue: UITextField!
    
    var valueForScootersScreen = String()
    var valueForBicyclesScreen = String()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Selected index: \(self.tabBarController?.selectedIndex ?? -1)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        valueForScootersScreen = textfieldHoldingScootersValue.text ?? String()
        valueForBicyclesScreen = textfieldHoldingBicyclesValue.text ?? String()
        
        if let navController = self.tabBarController?.viewControllers?[1] as? UINavigationController{
            if let scootersTab = navController.children.first as? BuyNewScooterOrBikeVC{
                scootersTab.receivedValueFromHomeScreen = valueForScootersScreen
            }
        }
        
        if let navController = self.tabBarController?.viewControllers?[2] as? UINavigationController{
            if let bicyclesTab = navController.children.first as? BuyNewScooterOrBikeVC{
                bicyclesTab.receivedValueFromHomeScreen = valueForBicyclesScreen
            }
        }
        
        if let navController = self.tabBarController?.viewControllers?[3] as? UINavigationController{
            if let carsTab = navController.children.first as? BuyNewCarVC{
                carsTab.valueReceivedFromHomeScreen = "Buy a new car now !"
            }
        }
        
        if let navController = self.tabBarController?.viewControllers?[4] as? UINavigationController{
            if let optionsTab = navController.children.first as? OptionsVC{
                optionsTab.valueReceivedFromHomeScreen = "Select more options now !"
            }
        }
    }
    
    // Logout the user and navigate to Login screen
    @IBAction func logoutTapped(_ sender: UIBarButtonItem) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
}
