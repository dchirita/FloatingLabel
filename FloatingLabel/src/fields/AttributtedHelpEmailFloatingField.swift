//
//  AttributtedHelpEmailFloatingField.swift
//  FloatingLabel
//
//  Created by Daniel  Chirita on 03/08/2018.
//  Copyright © 2018 Kevin Hirsch. All rights reserved.
//

import UIKit

public protocol AttributtedHelpEmailFloatingFieldCallToActionDelegate: class {
    func didPressCallToAction(field: AttributtedHelpEmailFloatingField)
}

open class AttributtedHelpEmailFloatingField: EmailFloatingField {
    
    public weak var callToActionDelegate: AttributtedHelpEmailFloatingFieldCallToActionDelegate?
    
    private weak var touchGestureHandler: UITapGestureRecognizer?
    
    public var helperAttributedText: NSAttributedString? {
        didSet {
            self.helperLabel.attributedText = helperAttributedText
        }
    }
    
    override open func setup() {
        super.setup()
        
        let touchHandler = UITapGestureRecognizer(target: self,
                                                  action: #selector(helperTouched))
        self.helperLabel.isUserInteractionEnabled = true
        self.helperLabel.addGestureRecognizer(touchHandler)
        self.touchGestureHandler = touchHandler
    }
    
    open override func customizeHelperLabel() {
        helperLabel.numberOfLines = 0
        helperLabel.clipsToBounds = true
    }
    
    deinit {
        self.removeGestureRecognizer(self.touchGestureHandler!)
    }
    
    @objc private func helperTouched() {
        self.callToActionDelegate?.didPressCallToAction(field: self)
    }
    
    override open func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        
        if self.point(inside: point, with: event) {
            
            let helperFrame = helperLabel.frame
            
            if helperFrame.contains(point) {
                return helperLabel
            }
            
            return super.hitTest(point, with: event)
        } else {
            return super.hitTest(point, with: event)
        }
    }
}
