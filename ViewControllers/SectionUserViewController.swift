//
//  SectionUserViewController.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//

import UIKit

final class SectionUserViewController: UITableViewController {
	
	var users: [User]!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

// MARK: - Table view data source
extension SectionUserViewController {
	
    override func numberOfSections(in tableView: UITableView) -> Int {
		users.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		2
    }
	
	override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		20
	}
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let user = users?[indexPath.section]
		let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
		var content = cell.defaultContentConfiguration()
		
		if(indexPath.row == 0) {
			content.text = user?.phone ?? ""
			content.image = UIImage(systemName: "phone")
		}
		else {
			content.text = user?.email ?? ""
			content.image = UIImage(systemName: "envelope")
		}
		
		cell.contentConfiguration = content
		return cell
    }
	
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		users?[section].fullName
	}
	
	override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
		nil
	}
	
}
