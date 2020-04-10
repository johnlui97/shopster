//
//  ProfileViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-05.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class ProfileViewController: UITableViewController {
    
    var cellId = "settings_cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    internal override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    internal override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        return cell
    }
}
