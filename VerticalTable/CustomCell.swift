//
//  customCell.swift
//  VerticalTable
//
//  Created by Ashok on 11/6/16.
//  Copyright © 2016 Ashok. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    /* http://stackoverflow.com/questions/38386339/what-exactly-is-init-coder-adecoder */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 0.0
    }
    
}
