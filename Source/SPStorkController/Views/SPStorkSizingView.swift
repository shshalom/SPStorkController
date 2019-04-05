//
//  SPStorkSizingView.swift
//  stork-controller
//
//  Created by Shalom Shwaitzer on 05/04/2019.
//  Copyright © 2019 Ivan Vorobei. All rights reserved.
//

import Foundation

import UIKit

open class SPStorkSizingView: UIView {
    
    enum Mode {
        case up
        case down
    }
    
    var mode: Mode = .up {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    var color = UIColor.blue {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    init() {
        super.init(frame: CGRect.zero)
        self.commonInit()
    }
    
    private func commonInit() {
        self.backgroundColor = UIColor.clear
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        if mode == .up {
            SPStorkCodeDraw.drawSizingUp(frame: rect, resizing: .aspectFit, color: self.color)
        } else if mode == .down {
            SPStorkCodeDraw.drawSizingDown(frame: rect, resizing: .aspectFit, color: self.color)
        }
    }
}
