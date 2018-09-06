//
//  FloatingFieldInput.swift
//  FloatingLabel
//
//  Created by Kevin Hirsch on 4/08/15.
//  Copyright (c) 2015 Kevin Hirsch. All rights reserved.
//

import UIKit

internal protocol InputType {
	
	//HACK: doesn't work without the leadings "__". It's a weird compilator bug.
	
	var __text: String? { get set }
	var __placeholder: String? { get set }
	var __editing: Bool { get }
	var __isEmpty: Bool { get }
	var __inputView: UIView? { get set }
	var __font: UIFont! { get set }
	var __textColor: UIColor! { get set }
	var __tintColor: UIColor! { get set }
	var __textAlignment: NSTextAlignment { get set }
	
	var __autocapitalizationType: UITextAutocapitalizationType { get set }
	var __autocorrectionType: UITextAutocorrectionType { get set }
	var __spellCheckingType: UITextSpellCheckingType { get set }
	var __keyboardType: UIKeyboardType { get set }
	var __keyboardAppearance: UIKeyboardAppearance { get set }
	var __returnKeyType: UIReturnKeyType { get set }
	var __enablesReturnKeyAutomatically: Bool { get set }
	var __secureTextEntry: Bool { get set }
	
	var intrinsicContentSize: CGSize { get }
	func invalidateIntrinsicContentSize()
	func sizeToFit()
	var canBecomeFirstResponder: Bool { get }
	func becomeFirstResponder() -> Bool
	func resignFirstResponder() -> Bool
	var isFirstResponder: Bool  { get }
	var canResignFirstResponder: Bool { get }
	
}
