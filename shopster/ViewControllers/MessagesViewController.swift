//
//  MessagesViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-05.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class MessagesViewController: UITableViewController {
    
    private var cellID = "messages_cell"
    
    let messages = [MessagesStruct(text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.", isIncoming: true),
                    MessagesStruct(text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", isIncoming: false),
                    MessagesStruct(text: "Ok thanks!", isIncoming: true),
                    MessagesStruct(text: "It is a long established fact that...", isIncoming: true),
                    MessagesStruct(text: "making it look like readable English.", isIncoming: true),
                    MessagesStruct(text: "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.", isIncoming: false),
                    MessagesStruct(text: "It is a long established fac", isIncoming: false),
                    MessagesStruct(text: "There are many variations of passages of Lorem Ipsum available, but the majority have", isIncoming: true),
                    MessagesStruct(text: "If you are going to", isIncoming: true),
                    MessagesStruct(text: "The generated Lorem Ipsum is therefore always free from repetition", isIncoming: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        tableView.register(MessagesTableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.separatorStyle = .none
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MessagesTableViewCell
        let dm = messages[indexPath.row]
        cell.chatMessages = dm
        return cell
    }
}
