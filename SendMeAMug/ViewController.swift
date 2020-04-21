//
//  ViewController.swift
//  SendMeAMug
//
//  Created by Luiza Fattori on 17/04/20.
//  Copyright © 2020 Luiza Fattori. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {

    @IBOutlet weak var arView: ARView!
    @IBOutlet weak var shareButton: UIButton!
    @IBAction func shareButton(_ sender: Any) {

        let alert = UIAlertController.init(title: "Tire um ScreenShot",
                                           message: "Você esperava que eu iria fazer tudo por você? Tire um ScreenShot para pode compartilhar.",
                                           preferredStyle: .alert)

        let okAction = UIAlertAction.init(title: "OK",
                                              style: .cancel)

        alert.addAction(okAction)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }

}
