//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Aristotle on 2017-02-16.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    
    @IBOutlet weak var repoNameLabel: UILabel!
    
    @IBOutlet weak var repoAuthorLabel: UILabel!
    @IBOutlet weak var repoDescriptionLabel: UILabel!
    @IBOutlet weak var starsImageView: UIImageView!
    
    @IBOutlet weak var forksImageView: UIImageView!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
