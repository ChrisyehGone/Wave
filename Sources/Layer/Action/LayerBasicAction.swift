//
//  LayerBasicAction.swift
//  Wave
//
//  Created by Khoa Pham on 27/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public extension Layer {

  public final class BasicAction: LayerBasicAnimationConfigurable {

    let _animation = CABasicAnimation()
    public var layer: CALayer?

    public var animation: CAAnimation {
      return _animation
    }

    public init() {

    }
  }
}

extension Layer.BasicAction: Action {

  public func run(nextActions: [Action]) {
    CATransaction.begin()

    CATransaction.setCompletionBlock {
      Wave.run(nextActions)
    }
    
    layer?.addAnimation(_animation, forKey: "")
    
    CATransaction.commit()
  }
}
