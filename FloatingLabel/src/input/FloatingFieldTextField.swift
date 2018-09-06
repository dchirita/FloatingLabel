//
//  FloatingFieldTextField.swift
//  FloatingLabel
//
//  Created by Kevin Hirsch on 23/07/15.
//  Copyright (c) 2015 Kevin Hirsch. All rights reserved.
//

import UIKit

open class FloatingFieldTextField: UITextField {
	
	var showCursor = true
	var enableContextMenu = true
	var enableSelection = true
	
}

//MARK: - Customization

extension FloatingFieldTextField {
	
	internal func disableEditionByUser() {
		showCursor = false
		enableContextMenu = false
		enableSelection = false
	}
	
	// show/hide cursor
	override open func caretRect(for position: UITextPosition) -> CGRect {
		if showCursor {
			return super.caretRect(for: position)
		} else {
			return .zero
		}
	}
	
	// enable/disable context menu
	override open func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
		if enableContextMenu {
			return super.canPerformAction(action, withSender: sender)
		} else {
			return false
		}
	}
	
	// enable/disable text selection
	override open func selectionRects(for range: UITextRange) -> [Any] {
		if enableSelection {
			return super.selectionRects(for: range)
		} else {
			return []
		}
	}
	
	// enable/disable magnifier
	override open func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
		if !enableSelection
			&& (gestureRecognizer is UILongPressGestureRecognizer
				|| (gestureRecognizer is UITapGestureRecognizer
					&& (gestureRecognizer as! UITapGestureRecognizer).numberOfTapsRequired == 2))
		{
			return false
		} else {
			return super.gestureRecognizerShouldBegin(gestureRecognizer)
		}
    }
}

extension FloatingFieldTextField: InputType {
    
    var __text: String? {
        get { return text }
        set { text = newValue }
    }
    
    var __placeholder: String? {
        get { return placeholder }
        set { placeholder = newValue }
    }
    
    var __editing: Bool {
        return isEditing
    }
    
    var __isEmpty: Bool {
        return text?.isEmpty ?? false
    }
    
    var __inputView: UIView? {
        get { return inputView }
        set { inputView = newValue }
    }
    
    var __font: UIFont! {
        get { return font }
        set { font = newValue }
    }
    
    var __textColor: UIColor! {
        get { return textColor }
        set { textColor = newValue }
    }
    
    var __tintColor: UIColor! {
        get { return tintColor }
        set { tintColor = newValue }
    }
    
    var __textAlignment: NSTextAlignment {
        get { return textAlignment }
        set { textAlignment = newValue }
    }
    
    var __autocapitalizationType: UITextAutocapitalizationType {
        get { return autocapitalizationType }
        set { autocapitalizationType = newValue }
    }
    
    var __autocorrectionType: UITextAutocorrectionType {
        get { return autocorrectionType }
        set { autocorrectionType = newValue }
    }
    
    var __spellCheckingType: UITextSpellCheckingType {
        get { return spellCheckingType }
        set { spellCheckingType = newValue }
    }
    
    var __keyboardType: UIKeyboardType {
        get { return keyboardType }
        set { keyboardType = newValue }
    }
    
    var __keyboardAppearance: UIKeyboardAppearance {
        get { return keyboardAppearance }
        set { keyboardAppearance = newValue }
    }
    
    var __returnKeyType: UIReturnKeyType {
        get { return returnKeyType }
        set { returnKeyType = newValue }
    }
    
    var __enablesReturnKeyAutomatically: Bool {
        get { return enablesReturnKeyAutomatically }
        set { enablesReturnKeyAutomatically = newValue }
    }
    
    var __secureTextEntry: Bool {
        get { return isSecureTextEntry }
        set { isSecureTextEntry = newValue }
    }
}

extension FloatingFieldTextView: InputType {
    
    var __text: String? {
        get { return text }
        set { text = newValue }
    }
    
    var __placeholder: String? {
        get { return placeholder }
        set { placeholder = newValue }
    }
    
    var __editing: Bool {
        return isFirstResponder
    }
    
    var __isEmpty: Bool {
        return text?.isEmpty ?? false
    }
    
    var __inputView: UIView? {
        get { return inputView }
        set { inputView = newValue }
    }
    
    var __font: UIFont! {
        get { return font }
        set { font = newValue }
    }
    
    var __textColor: UIColor! {
        get { return textColor }
        set { textColor = newValue }
    }
    
    var __tintColor: UIColor! {
        get { return tintColor }
        set { tintColor = newValue }
    }
    
    var __textAlignment: NSTextAlignment {
        get { return textAlignment }
        set { textAlignment = newValue }
    }
    
    var __autocapitalizationType: UITextAutocapitalizationType {
        get { return autocapitalizationType }
        set { autocapitalizationType = newValue }
    }
    
    var __autocorrectionType: UITextAutocorrectionType {
        get { return autocorrectionType }
        set { autocorrectionType = newValue }
    }
    
    var __spellCheckingType: UITextSpellCheckingType {
        get { return spellCheckingType }
        set { spellCheckingType = newValue }
    }
    
    var __keyboardType: UIKeyboardType {
        get { return keyboardType }
        set { keyboardType = newValue }
    }
    
    var __keyboardAppearance: UIKeyboardAppearance {
        get { return keyboardAppearance }
        set { keyboardAppearance = newValue }
    }
    
    var __returnKeyType: UIReturnKeyType {
        get { return returnKeyType }
        set { returnKeyType = newValue }
    }
    
    var __enablesReturnKeyAutomatically: Bool {
        get { return enablesReturnKeyAutomatically }
        set { enablesReturnKeyAutomatically = newValue }
    }
    
    var __secureTextEntry: Bool {
        get { return isSecureTextEntry }
        set { isSecureTextEntry = newValue }
    }
}

