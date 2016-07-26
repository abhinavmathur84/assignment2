//
//  SwitchCell.swift
//  Yelp
//
//  Created by Abhinav Mathur on 7/25/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
///Users/amathu4/GitHub/assignment2/ios_yelp_swift-master/Yelp/SwitchCell.swift

import UIKit

@objc protocol SwitchCellDelegate {
    optional func switchCell(switchCell: SwitchCell , didChangeValue value:Bool)
}

class SwitchCell: UITableViewCell {

    @IBOutlet weak var switchLabel: UILabel!
    
    @IBOutlet weak var onSwitch: UISwitch!
    
    weak var delegate: SwitchCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        onSwitch.addTarget(self, action: "switchValueChanged", forControlEvents: UIControlEvents.ValueChanged)
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func switchValueChanged(){
        if (delegate != nil) {
            delegate!.switchCell?(self, didChangeValue: onSwitch.on)
        }
        
    }

}
