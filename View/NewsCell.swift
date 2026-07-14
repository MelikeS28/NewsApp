//
//  NewsCell.swift
//  HaberProjesi
//
//  Created by Melike on 1.02.2026.
//

import UIKit

class NewsCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var storyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with viewModel: NewsCellViewModel) {
        titleLabel.text = viewModel.title
        storyLabel.text = viewModel.story
    }

}
