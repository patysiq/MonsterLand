//
//  Larry.swift
//  MonsterGame
//
//  Created by PATRICIA S SIQUEIRA on 28/02/21.
//

import UIKit
import SpriteKit

class Larry: SKSpriteNode {

    var nome:String?
    
    init(_ nome:String) {
        self.nome = nome
        let textura = SKTexture(imageNamed: "Dude")
        super.init(texture: textura, color: .red, size: textura.size())
        self.setup("Walk", 6)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(_ metodo: String, _ times: Int) {
        var imagens:[SKTexture] = []
        
        for i in 1...times {
            imagens.append(SKTexture(imageNamed: "\(metodo)_\(i)"))
        }
        
        let animacao:SKAction = SKAction.animate(with: imagens, timePerFrame: 0.1, resize: true, restore: true)
        self.run(SKAction.repeatForever(animacao))
    }
}
