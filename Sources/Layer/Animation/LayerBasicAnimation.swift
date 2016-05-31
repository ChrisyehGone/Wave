//
//  LayerBasicAnimation.swift
//  Wave
//
//  Created by Khoa Pham on 27/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public extension Layer {

  public final class BasicAnimation: LayerConfigurable, LayerBasicAnimationConfigurable {

    let _info = CABasicAnimation()
    public var layer: CALayer?

    public var info: CAAnimation {
      return _info
    }

    public init() {

    }
  }
}

extension Layer.BasicAnimation: Action {

  public func run(nextActions: [Action]) {
    CATransaction.begin()

    CATransaction.setCompletionBlock {
      Wave.run(nextActions)
    }
    
    layer?.addAnimation(_info, forKey: "")
    
    CATransaction.commit()
  }
}
