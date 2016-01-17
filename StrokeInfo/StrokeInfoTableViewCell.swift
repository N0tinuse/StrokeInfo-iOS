//
//  StrokeInfoTableViewCell.swift
//  StrokeInfo
//
//  Created by Will Meyer on 1/17/16.
//  Copyright © 2016 Will Meyer. All rights reserved.
//

import UIKit

class StrokeInfoTableViewCell: UITableViewCell {
    
    @IBOutlet var infoLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.accessoryType = .DisclosureIndicator
        self.preservesSuperviewLayoutMargins = false
        self.layoutMargins = UIEdgeInsetsZero
        self.separatorInset = UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 4)
        let bgColorView = UIView()
        bgColorView.backgroundColor = selectedColor
        bgColorView.layer.cornerRadius = 5
        self.selectedBackgroundView = bgColorView
    }
    
}
