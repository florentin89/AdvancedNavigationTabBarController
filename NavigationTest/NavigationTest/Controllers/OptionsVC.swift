//
//  OptionsVC.swift
//  NavigationTest
//
//  Created by Flo Lupascu on 07/12/2021.
//

import UIKit

class OptionsVC: UIViewController {
    
    var valueReceivedFromHomeScreen = String()

    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Selected index: \(self.tabBarController?.selectedIndex ?? -1)")
        print("OptionsScreen - Value received from HomeScreen: \(valueReceivedFromHomeScreen)")
    }
}
