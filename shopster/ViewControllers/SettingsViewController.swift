//
//  ProfileViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-05.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    var cellId = "settings_cell"
    
    var settingsOptions = ["Cart",
                           "Account",
                           "Privacy",
                           "Payment Methods",
                           "Location",
                           "Sounds",
                           "Terms of Use",
                           "Data Policy",
                           "Community Standards"]
    
    private func setupTableView() {
        tableView.register(ProfileCells.self, forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    internal override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsOptions.count
    }
    
    internal override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProfileCells
        cell.cellLabel.text = settingsOptions[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
}
