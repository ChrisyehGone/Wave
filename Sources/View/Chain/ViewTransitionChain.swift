//
//  ViewTransitionChain.swift
//  Wave
//
//  Created by Khoa Pham on 27/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public extension View {

  public final class TransitionChain: Chainable {

    public var actions: [Action] = []
    public let views: [UIView]

    public init(views: [UIView]) {
      self.views = views
    }
  }
}

// MARK: - Configure

public extension View.TransitionChain {

  public func duration(interval: NSTimeInterval) -> View.TransitionChain {
    return configure { (inout action: View.TransitionAction) in
      action.duration = interval
    }
  }

  public func option(options: UIViewAnimationOptions) -> View.TransitionChain {
    return configure { (inout action: View.TransitionAction) in
      action.options = options
    }
  }

  public func from(view: UIView) -> View.TransitionChain {
    return configure { (inout action: View.TransitionAction) in
      action.from = view
    }
  }

  public func to(view: UIView) -> View.TransitionChain {
    return configure { (inout action: View.TransitionAction) in
      action.to = view
    }
  }

  public func with(view: UIView) -> View.TransitionChain {
    return configure { (inout action: View.TransitionAction) in
      action.with = view
    }
  }

  public func block(block: UIView -> Void) -> View.TransitionChain {
    return configure { (inout action: View.TransitionAction) in
      action.block = block
    }
  }
}

// MARK: - Animate

public extension View.TransitionChain {

  public func animate() -> View.TransitionChain {
    let action = View.TransitionAction()

    return link(action)
  }
}
