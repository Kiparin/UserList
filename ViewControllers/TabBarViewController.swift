//
//  TabBarViewController.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		let users = User.getUsers()
		
		if let basePersonVC = viewControllers?.first as? UINavigationController	 {
			let listUserVC = basePersonVC.viewControllers.first as? ListUserTableViewController
			listUserVC?.users = users
		}
		
		if let basePersonVC = viewControllers?[1] as? UINavigationController	 {
			let customVC = basePersonVC.viewControllers.first as? CustomUserTableViewController
			customVC?.users = users
		}
		
		if let sectionVC = viewControllers?.last as? UINavigationController	 {
			let sectionUserVC = sectionVC.viewControllers.first as? SectionUserViewController
			sectionUserVC?.users = users
		}
		
    }
}
