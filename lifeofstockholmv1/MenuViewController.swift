//
//  MenuViewController.swift
//  lifeofstockholmv1
//
//  Created by Karolina Pagaduan on 2016-03-21.
//  Copyright © 2016 hyperisland. All rights reserved.
//

import UIKit
import SidebarOverlay

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func goToFeed() {
        goToScreenWithId("feedScreen")
    }
    
    @IBAction func goToSettings() {
        goToScreenWithId("settingsScreen")
    }
    @IBAction func goTomatbar() {
        goToScreenWithId("matbar")
    }

    @IBAction func goTokarta() {
        goToScreenWithId("karta")
    }
    
    
    @IBAction func goToMat() {
        goToScreenWithId("Mat")
    }
    

    @IBAction func goTokultur() {
        goToScreenWithId("kultur")
    }

    
    @IBAction func goToplatser() {
        goToScreenWithId("platser")
    }

    
    
    private func goToScreenWithId(screenId: String!) {
        if let container = self.so_containerViewController {
            let topViewController = self.storyboard!.instantiateViewControllerWithIdentifier(screenId)
            container.topViewController = topViewController
            container.isLeftViewControllerPresented = false
        }
    }

}
