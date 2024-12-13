//
//  UserDetailViewController.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//

import UIKit

class UserDetailViewController: UIViewController {

	@IBOutlet weak var fullName: UILabel!
	@IBOutlet weak var surName: UILabel!
	@IBOutlet weak var name: UILabel!
	@IBOutlet weak var age: UILabel!
	@IBOutlet weak var email: UILabel!
	@IBOutlet weak var phone: UILabel!
	@IBOutlet weak var address: UILabel!
	
	var user : User?
	
    override func viewDidLoad() {
        super.viewDidLoad()

     setData()
    }
	
	private func setData() {
		fullName.text = user?.fullName ?? "Test"
		surName.text = user?.surname ?? "Test"
		name.text = user?.name ?? "Test"
		age.text = user?.ageDescription ?? "Test"
		email.text = user?.email ?? "Test"
		phone.text = user?.phone ?? "Test"
		address.text = user?.address ?? "Test"
	}
}
