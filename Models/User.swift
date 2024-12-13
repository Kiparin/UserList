//
//  User.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//

struct User {
	let name: String
	let surname: String
	let age: Int
	let email: String
	let phone: String
	let address: String
	
	var fullName: String {
		get {
			"\(name) \(surname)"
		}
	}
	
	var ageDescription: String {
		get {
			"\(age) years old"
		}
	}
	
	static func getUsers() -> [User] {
		var users: [User] = []
		
		for _ in 0..<14 {
			users.append(User.getUser())
		}
		return users
	}
	
	static func getUser() -> User {
		User(
			name: Generator.randomName(),
			surname: Generator.randomSurname(),
			age: Int.random(in: 16...100),
			email: Generator.randomEmail(),
			phone: Generator.randomPhoneNumber(),
			address: "Moscow, Russia"
		)
	}
}
