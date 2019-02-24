//
//  TweetsCellTableViewCell.swift
//  Twitter
//
//  Created by Sylvia Sesay on 2/20/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetsCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var TweetsContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
