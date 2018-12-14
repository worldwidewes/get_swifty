//
//  TealiumHelper.swift
//  get_swifty
//
//  Created by Wesley Limtiaco on 12/11/18.
//  Copyright © 2018 Limtiaco. All rights reserved.
//

import Foundation
import tealium_swift

class TealiumHelper {
    
    static let shared = TealiumHelper()
    var tealium: Tealium?
    
    private init() {
        
    }
    
    public func start() {
        let tealConfig = TealiumConfig(account: "services-wesley", profile: "mobile", environment: "dev")
        tealConfig.setLogLevel(logLevel: .verbose)
        
        self.tealium = Tealium(config: tealConfig,
                               completion: {_ in 
            self.tealium?.consentManager()?.setUserConsentStatus(.consented)
        })
    }
    
}
