//
//  ContainerViewController.swift
//  lifeofstockholmv1
//
//  Created by Karolina Pagaduan on 2016-03-21.
//  Copyright © 2016 hyperisland. All rights reserved.
//

import UIKit
import SidebarOverlay

class ContainerViewController: SOContainerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.topViewController = self.storyboard?.instantiateViewControllerWithIdentifier("feedScreen")
        self.leftViewController = self.storyboard?.instantiateViewControllerWithIdentifier("menuScreen")
    }
}
