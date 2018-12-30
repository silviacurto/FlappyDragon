//
//  GameViewController.swift
//  FlappyDragon
//
//  Created by Sílvia Curto on 16/12/2018.
//  Copyright © 2018 Sílvia Curto. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var stage: SKView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stage = (view as! SKView)
        stage.ignoresSiblingOrder = true
        
        presentScene()
        
    }

    func presentScene(){
    
        let scene = GameScene(size: CGSize(width: 320, height: 568))
        scene.gameViewController = self
        scene.scaleMode = .aspectFill
        stage.presentScene(scene, transition: .doorsOpenVertical(withDuration: 0.5))
    }
   

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
