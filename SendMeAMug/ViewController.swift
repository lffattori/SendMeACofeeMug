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
        self.arView.asImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }

}
