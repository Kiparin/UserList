//
//  SectionUserTableViewController.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//
import UIKit

final class CustomUserTableViewController: UITableViewController {
	
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

extension CustomUserTableViewController {
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		users.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "customSectionCell", for: indexPath) as! CustomSectionViewCell
		let item = users[indexPath.row]
		
		cell.fullName.text = item.fullName
		cell.email.text = item.email
		cell.phone.text = item.phone
		
		return cell
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let user = users?[indexPath.row]
		performSegue(withIdentifier: "showSpecialDetailSegue", sender: user)
	}
}
