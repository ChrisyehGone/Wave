//
//  ViewAnimationConfigurable.swift
//  Wave
//
//  Created by Khoa Pham on 31/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public protocol ViewAnimationConfigurable: class {

  var animation: View.Animation { get }
}
