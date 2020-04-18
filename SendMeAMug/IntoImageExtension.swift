//
//  IntoImageExtension.swift
//  SendMeACoffee
//
//  Created by Luiza Fattori on 17/04/20.
//  Copyright © 2020 Luiza Fattori. All rights reserved.
//

import ARKit
import SceneKit
import RealityKit

extension ARView {
    public func asImage() -> UIImage {
        // Just to check if the device has iOS 10.0 or further
        if #available(iOS 10.0, *) {
            let renderer = UIGraphicsImageRenderer(bounds: bounds)
            return renderer.image { rendererContext in
                layer.render(in: rendererContext.cgContext)
            }
            // This transforms the ARView into a Image
        } else {
            UIGraphicsBeginImageContext(self.frame.size)
            self.layer.render(in:UIGraphicsGetCurrentContext()!)

            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()

            return UIImage(cgImage: image!.cgImage!)
        }
    }
}

