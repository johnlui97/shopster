//
//  MessagesHistoryViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-06.
//  Copyright © 2020 John Lui. All rights reserved.
//
import Foundation
import UIKit

class ConversationsViewController: UITableViewController {
    
    var cellID = "conversationID"
    
//    var sampleData = [ConversationStruct(Name: "John Lui", Timestamp: "Friday", ProfileImage: UIImage(named: "default-avatar")!, lastMessage: "I thought you were gunna buy it yesterday?"),
//                      ConversationStruct(Name: "Archith Menon", Timestamp: "Yesterday", ProfileImage: UIImage(named: "default-avatar")!, lastMessage: "yoo when we going tomorrow?"),
//                      ConversationStruct(Name: "Bryan Widjaja", Timestamp: "Monday", ProfileImage: UIImage(named: "default-avatar")!, lastMessage: "r u going to volleyball?"),
//                      ConversationStruct(Name: "Keith Cheng", Timestamp: "03/12/2020", ProfileImage: UIImage(named: "default-avatar")!, lastMessage: "did you finish that signals assignment?")]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        tableView.register(ConversationCell.self, forCellReuseIdentifier: cellID)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
//        return sampleData.count
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! ConversationCell
//        let conversation = sampleData[indexPath.row]
//        cell.chatMessages = conversation
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(MessagesViewController(), animated: true)
    }
    
}
