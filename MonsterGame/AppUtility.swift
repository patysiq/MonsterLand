//
//  AppUtility.swift
//  MonsterGame
//
//  Created by PATRICIA S SIQUEIRA on 28/02/21.
//

import Foundation
import UIKit

struct AppUtility {
    static func lockOrientation(_ orientation:UIInterfaceOrientationMask) {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.orientationLock = orientation
        }
    }
    
    static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation:UIInterfaceOrientation) {
        self.lockOrientation(orientation)
        UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
    }
}
