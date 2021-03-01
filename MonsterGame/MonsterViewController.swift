//
//  MonsterViewController.swift
//  MonsterGame
//
//  Created by PATRICIA S SIQUEIRA on 28/02/21.
//

import UIKit
import SpriteKit

class MonsterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppUtility.lockOrientation(.landscape)
        
        let view: SKView = SKView(frame: self.view.frame)
        self.view = view
        
        let scene:MonterScene = MonterScene(size: view.frame.size)
        view.presentScene(scene)
        
        view.ignoresSiblingOrder = true
        view.showsFPS = true
        view.showsNodeCount = true
        //debug physics
        //view.showsPhysics = true
        
//        for fontFamily in UIFont.familyNames {
//                print("Font family name = \(fontFamily as String)")
//                for fontName in UIFont.fontNames(forFamilyName: fontFamily as String) {
//                    print("- Font name = \(fontName)")
//                }
//        }
       
    }
    

}


