//
//  CameraPreviewView.swift
//  VideoPost
//
//  Created by Jessie Ann Griffin on 5/12/20.
//  Copyright © 2020 Jessie Griffin. All rights reserved.
//

import UIKit
import AVFoundation

class CameraPreviewView: UIView {
    
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
    var videoPlayerLayer: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }
    
    var session: AVCaptureSession? {
        get { return videoPlayerLayer.session }
        set { videoPlayerLayer.session = newValue }
    }
}
