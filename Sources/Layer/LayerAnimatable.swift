//
//  LayerAnimatable.swift
//  Wave
//
//  Created by Khoa Pham on 27/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public protocol LayerAnimatable: class {

  func animate(block: Block) -> Self
  var layer: CALayer { get }
}
