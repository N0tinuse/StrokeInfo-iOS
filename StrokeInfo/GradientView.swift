//
//  GradientView.swift
//  StrokeInfo
//
//  Created by Will Meyer on 1/17/16.
//  Copyright © 2016 Will Meyer. All rights reserved.
//
//  Adapted from http://stackoverflow.com/questions/17555986/cagradientlayer-not-resizing-nicely-tearing-on-rotation-video-of-issue-attac


import Foundation
import UIKit

class GradientView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        guard let gradient = self.layer as? CAGradientLayer else {
            return;
        }
        
        gradient.colors = [gradientTopColor.CGColor, gradientBottomColor.CGColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
    }
    
    override class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }
}