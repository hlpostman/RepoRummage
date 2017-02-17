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
    @IBOutlet weak var starCountLabel: UILabel!
    @IBOutlet weak var forksImageView: UIImageView!
    @IBOutlet weak var forkCountLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    var repo: GithubRepo! {
        didSet {
            // Images
            starsImageView.image = UIImage(named: "star")
            forksImageView.image = UIImage(named: "fork")
            avatarImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            
            // Labels
            repoNameLabel.text = repo.name
            repoAuthorLabel.text = repo.ownerHandle
            repoDescriptionLabel.text = repo.description
            starCountLabel.text = String(describing: repo.stars!)
            forkCountLabel.text = String(describing: repo.forks!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
