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
    
    var sampleData = [ConversationStruct(Name: "John Lui", Timestamp: "2:13", lastMessage: "I thought you were gunna buy it yesterday? or did u decide not to..."),
                      ConversationStruct(Name: "Archith Menon", Timestamp: "5:48", lastMessage: "yoo when we going tomorrow?"),
                      ConversationStruct(Name: "Bryan Widjaja", Timestamp: "03/12/20", lastMessage: "r u going to volleyball?"),
                      ConversationStruct(Name: "Keith Cheng", Timestamp: "02/25/20", lastMessage: "did you finish that signals assignment?"),
                      ConversationStruct(Name: "Sahil Patel", Timestamp: "01/02/20", lastMessage: "did you finish that signals assignment?"),
                      ConversationStruct(Name: "Arij Saleem", Timestamp: "01/02/20", lastMessage: "did you finish that signals assignment?"),
                      ConversationStruct(Name: "Masood Idries", Timestamp: "01/02/20", lastMessage: "did you finish that signals assignment?"),
                      ConversationStruct(Name: "Enrico Florentino", Timestamp: "01/02/20", lastMessage: "did you finish that signals assignment?")
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.register(ConversationCell.self, forCellReuseIdentifier: cellID)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleData.count
//        return sampleData.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! ConversationCell
        cell.name.text = sampleData[indexPath.row].Name
        cell.timestamp.text = sampleData[indexPath.row].Timestamp
        cell.recentMessage.text = sampleData[indexPath.row].lastMessage
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(MessagesViewController(), animated: true)
    }
    
}
