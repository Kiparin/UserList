//
//  Generator.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//

class Generator {
	private static var names: [String] = [
		"Roman",
		"Alexey",
		"Vladimir",
		"Sergey",
		"Igor",
		"Vitaly",
		"Oleg",
		"Dmitry",
		"Maxim",
		"Pavel",
		"Yuri",
		"Konstantin",
		"Artem",
		"Vladislav",
		"Nikolay",
		"Sergei",
	]
	private static var surnames: [String] = [
		"Petrov",
		"Sidoriv",
		"Popov",
		"Mamonov",
		"Shubin",
		"Butler",
		"Srutov",
		"Drutov",
		"Kuznetsover",
		"Kuznetsov",
		"Provorov"
	]
	
	private static let email: [String] = [
		"@gmail.com",
		"@yahoo.com",
		"@mail.ru",
		"@hotmail.com",
		"@outlook.com",
		"@mail.com",
		"@icloud.com",
		"@yandex.ru",
		"@yahoo.ru",
		"@mail.ru",
		"@hotmail.com",
		"@outlook.com",
		"@mail.com",
		"@icloud.com",
		"@yandex.ru",
		"@yahoo.ru",
		"@mail.ru",
		"@hotmail.com",
		"@outlook.com",
		"@mail.com",
		"@icloud.com",
		"@yandex.ru",
		"@yahoo.ru",
	]
	
	private static let emailWords: [String] = [
		"eva",
		"petgoo228",
		"dre2dre",
		"ser",
		"max",
		"tactik",
		"ani2on",
		"supra",
		"dre",
		"serv",
		"plot",
		"avia",
		"her",
		"blob",
		"blob2",
		"blob3",
		"blob4",
		"blob5",
		
	]
	static func randomName() -> String {
		let name = names.randomElement() ?? "Error"
		names.removeAll { $0 == name }
		return name
	}
	
	static func randomSurname() -> String {
		let surname = surnames.randomElement() ?? "Error"
		surnames.removeAll { $0 == surname }
		return surname
	}
	
	static func randomPhoneNumber() -> String {
		return "+7(\(Int.random(in: 100...999)))\(Int.random(in: 100...999))\(Int.random(in: 1000...9999))"
	}
	
	public static func randomEmail() -> String {
		return "\(emailWords.randomElement() ?? " ")\(emailWords.randomElement() ?? " ")\(email.randomElement() ?? " ")"
	}
}
