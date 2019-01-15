//
//  TestTableCell.swift
//  GenericTableVC
//
//  Created by Md. Shaiful Islam on 1/15/19.
//  Copyright © 2019 Md. Shaiful Islam Sujohn. All rights reserved.
//

import UIKit

class TestTableCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
