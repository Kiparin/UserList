//
//  CustomSectionViewCell.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//

import UIKit

class CustomSectionViewCell: UITableViewCell {
	
	@IBOutlet weak var fullName: UILabel!
	@IBOutlet weak var phone: UILabel!
	@IBOutlet weak var email: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
	}
	
}
