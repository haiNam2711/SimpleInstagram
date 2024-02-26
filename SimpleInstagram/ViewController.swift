//
//  ViewController.swift
//  SimpleInstagram
//
//  Created by Hai Nam on 25/02/2024.
//

import AsyncDisplayKit

class ViewController: ASDKViewController<ASDisplayNode> {
    
    private let storyNode: StoryNode
    private let postNode: PostNode
    
    override init() {
        storyNode = StoryNode(stories: Story.generateDummyStory())
        postNode = PostNode(posts: Post.generateDummyPosts())
        
        super.init(node: ASDisplayNode())
        
        node.automaticallyManagesSubnodes = true
        node.layoutSpecBlock = {_,_ -> ASLayoutSpec in
            let storyNodeWithInset = ASInsetLayoutSpec(insets: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 0), child: self.storyNode)
            let nodeStack = ASStackLayoutSpec(direction: .vertical, spacing: 0, justifyContent: .start, alignItems: .stretch, children: [storyNodeWithInset, self.postNode])
            return nodeStack
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

