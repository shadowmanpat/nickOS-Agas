//
//  ChatMessageViewCell.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 11/3/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit

class ChatMessageViewCell : UITableViewCell {

    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var message: UILabel!
    
    var currentUid = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        
    }
    
    func setMessage  (chatMessage : ChatMessage){
        userName.text = chatMessage.from_username
        message.text = chatMessage.message
        if(currentUid == chatMessage.from_user_id){
            userName.textAlignment = .right
            message.textAlignment = .right
        }else {
            userName.textAlignment = .left
            message.textAlignment = .left
        }
        
    }

    
  
    
}

