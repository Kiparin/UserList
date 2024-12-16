//
//  ListUserTableViewController.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//

import UIKit

final class ListUserTableViewController: UITableViewController {

	var users: [User]!
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let userDetailVC = segue.destination as? UserDetailViewController
		userDetailVC?.user = sender as? User
    }
}

	// MARK: DataSource
extension ListUserTableViewController {
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		users?.count ?? 0
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
		let user = users?[indexPath.row]
		var content = cell.defaultContentConfiguration()
		content.text = user?.fullName ?? ""
		cell.contentConfiguration = content
		return cell
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let user = users?[indexPath.row]
		performSegue(withIdentifier: "showUserDetailSegue", sender: user)
	}
	
}
