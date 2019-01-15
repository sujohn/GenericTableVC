//
//  GenericTableModel.swift
//  GenericTableVC
//
//  Created by Md. Shaiful Islam on 12/7/18.
//  Copyright © 2018 Md. Shaiful Islam Sujohn. All rights reserved.
//

import UIKit

class GenericTableModel<T>: NSObject {
    
    var items: [T] = []
    var xib: Bool = false
    var cellHeight: CGFloat = 44.0
    var numberOfSections: Int = 0
    
    override init() {
        
    }
    
    convenience init(items: [T], cellHeight: CGFloat, xib: Bool, numberOfSections: Int = 0) {
        self.init()
        
        self.items = items
        self.cellHeight = cellHeight
        self.xib = xib
        self.numberOfSections = numberOfSections
    }
}
