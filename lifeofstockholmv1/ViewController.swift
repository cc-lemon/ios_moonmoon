//
//  ViewController.swift
//  lifeofstockholmv1
//
//  Created by Karolina Pagaduan on 2016-03-17.
//  Copyright © 2016 hyperisland. All rights reserved.
//

import UIKit

extension UIViewController {
    @IBAction func showMenu() {
        if let container = self.so_containerViewController {
            container.isLeftViewControllerPresented = true
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

