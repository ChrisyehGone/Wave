//
//  Wait.swift
//  Wave
//
//  Created by Khoa Pham on 22/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public struct Wait: Action {

  public var interval: NSTimeInterval = 0

  public init() {

  }

  public func run(nextActions: [Action]) {
    // Can't use duration == 0
    UIView.animateWithDuration(0.1, delay: interval, options: [], animations: {

    }, completion: { _ in
      Wave.run(nextActions)
    })
  }
}


