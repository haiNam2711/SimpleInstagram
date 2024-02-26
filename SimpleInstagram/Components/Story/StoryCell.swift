//
//  StoryCell.swift
//  SimpleInstagram
//
//  Created by Hai Nam on 26/02/2024.
//

import AsyncDisplayKit

class StoryCell: ASDisplayNode {
    
    private let avatarImage: ASImageNode
    private let nameText: ASTextNode
    
    init(story: Story) {
        avatarImage = ASImageNode()
        avatarImage.image = story.user.userPhoto
        avatarImage.style.preferredSize = CGSize(width: 55, height: 55)
        avatarImage.cornerRadius = 55/2
        
        nameText = ASTextNode()
        nameText.attributedText = NSAttributedString.subtitle(story.user.username)
        nameText.maximumNumberOfLines = 1
        
    }
    
}
