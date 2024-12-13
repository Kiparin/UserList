//
//  SectionUserViewController.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//

import UIKit

class SectionUserViewController: UITableViewController {
	
	var users: [User]!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

// MARK: - Table view data source
extension SectionUserViewController {
	
    override func numberOfSections(in tableView: UITableView) -> Int {
		return users.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 2
    }
	
	override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return 20
	}
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let user = users?[indexPath.section]
		if(indexPath.row == 0) {
			let phoneCell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
			var phoneContent = phoneCell.defaultContentConfiguration()
			phoneContent.text = user?.phone ?? ""
			phoneContent.image = UIImage(systemName: "phone")
			phoneCell.contentConfiguration = phoneContent
			return phoneCell
		}
		else {
			let emailCell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
			var emailContent = emailCell.defaultContentConfiguration()
			emailContent.text = user?.email ?? ""
			emailContent.image = UIImage(systemName: "envelope")
			emailCell.contentConfiguration = emailContent
			return emailCell
		}
    }
	
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return users?[section].fullName
	}
	
	override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
		return nil
	}
	
}
