//
//  UIView+Constraints.swift
//  DropDown
//
//  Created by Kevin Hirsch on 28/07/15.
//  Copyright (c) 2015 Kevin Hirsch. All rights reserved.
//

import UIKit

//MARK: - Constraints

internal extension UIView {
	
	func addConstraints(#format: String, options: NSLayoutFormatOptions = nil, metrics: [NSObject: AnyObject]? = nil, views: [String: UIView]) {
		addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(format, options: options, metrics: metrics, views: views))
	}
	
	func addUniversalConstraints(#format: String, options: NSLayoutFormatOptions = nil, metrics: [NSObject: AnyObject]? = nil, views: [String: UIView]) {
		addConstraints(format: "H:\(format)", options: options, metrics: metrics, views: views)
		addConstraints(format: "V:\(format)", options: options, metrics: metrics, views: views)
	}
	
}



//MARK: - Bounds

internal extension UIView {
	
	var windowFrame: CGRect? {
		return superview?.convertRect(frame, toView: nil)
	}
	
}

internal extension UIWindow {
	
	static func visibleWindow() -> UIWindow? {
		var currentWindow = UIApplication.sharedApplication().keyWindow
		
		if currentWindow == nil {
			let frontToBackWindows = UIApplication.sharedApplication().windows.reverse() as! [UIWindow]
			
			for window in frontToBackWindows {
				if window.windowLevel == UIWindowLevelNormal {
					currentWindow = window
					break
				}
			}
		}
		
		return currentWindow
	}
	
}