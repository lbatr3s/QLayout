//
//  QLayout.swift
//  QLayout
//
//  Created by Jose Quintero on 11/19/17.
//  Copyright © 2017 Jose Quintero. All rights reserved.
//

import Foundation
import UIKit

public class QLayout: QLayoutRelationSet {
    
    init(with view: UIView) {
        super.init()
        self.view = view
    }
    
    public func removeAllConstraints() {
        for constraint in view.superview?.constraints ?? [] {
            if (constraint.firstItem as? UIView) == view {
                view.superview?.removeConstraint(constraint)
            }
        }
    }
    
}
