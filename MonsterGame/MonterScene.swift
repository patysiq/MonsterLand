//
//  MonterScene.swift
//  MonsterGame
//
//  Created by PATRICIA S SIQUEIRA on 28/02/21.
//

import UIKit
import SpriteKit

var score = 0

class MonterScene: SKScene {
    let scoreLabel = SKLabelNode(fontNamed: "Planes_ValMore-Bold")
    let commandGameLabel = SKLabelNode(fontNamed: "Planes_ValMore-Bold")
    
    
    override func didMove(to view: SKView) {
        
        self.backgroundColor = UIColor.blue
        
        //Scroll background
        var backgroundImage:SKSpriteNode = SKSpriteNode()
        let backNode = SKNode()
        
        let moveBack = SKAction.moveBy(x: -self.size.width, y: 0, duration: 5)
        let repositionBack = SKAction.moveBy(x: self.size.width, y: 0, duration: 0)
        let loopBack = SKAction.repeatForever(SKAction.sequence([moveBack,repositionBack]))
        
        for j in 1...3 {
            for i in 0..<2 {
                backgroundImage = SKSpriteNode(imageNamed: "back0\(j)")
                backgroundImage.anchorPoint = CGPoint(x: 0, y: 0)
                backgroundImage.size = CGSize(width: self.size.width, height: self.size.height)
                backgroundImage.zPosition = CGFloat(j-2)
                backgroundImage.position = CGPoint(x: self.size.width * CGFloat(i), y: 0)
                backgroundImage.run(loopBack)
                
                backNode.addChild(backgroundImage)
            }
        }
        self.addChild(backNode)
        
        //SpeedBackgroun
        backNode.speed = 1
        
        //Add Larry
        let larry: Larry = Larry("Larry")
        larry.position = CGPoint(x: 100, y: 50)
        larry.zPosition = 20
        self.addChild(larry)
        
        //Add text into scene
        commandGameLabel.text = "Touch for Start"
        scoreLabel.text = "Score: \(score)"
        
        scoreLabel.horizontalAlignmentMode = .right
        scoreLabel.verticalAlignmentMode = .top
        
        scoreLabel.color = .black
        commandGameLabel.color = .yellow
        
        scoreLabel.position = CGPoint(x: frame.maxX - 10, y: frame.maxY - 10)
        commandGameLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        
        scoreLabel.zPosition = 50
        commandGameLabel.zPosition = 50
        
        self.addChild(scoreLabel)
        self.addChild(commandGameLabel)
    }
    
}
