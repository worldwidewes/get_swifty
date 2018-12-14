//
//  ViewController.swift
//  get_swifty
//
//  Created by Wesley Limtiaco on 12/11/18.
//  Copyright © 2018 Limtiaco. All rights reserved.
//

import UIKit
import tealium_swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myHelper = TealiumHelper.shared
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func trackEvent(_ sender: Any) {
        TealiumHelper.shared.tealium?.track(title: "Track Event Button Clicked")
        print("You fired a Link Event!")
    }
    
    
    @IBAction func trackView(_ sender: Any) {
        TealiumHelper.shared.tealium?.trackView(title: "Home Page", data: ["test":"true"], completion: nil)
        print("You fired a View Event!")
    }

}

