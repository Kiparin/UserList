//
//  Generator.swift
//  UserList
//
//  Created by Alexey Kiparin on 13.12.2024.
//

final class Generator {
	private static let names: [String] = [
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
	private static let surnames: [String] = [
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
		"blobsw",
		"bloer",
		"bloqw",
		"blobfc",
		
	]
	static func randomName() -> String {
		names.randomElement() ?? "Error"
	}
	
	static func randomSurname() -> String {
		surnames.randomElement() ?? "Error"
	}
	
	static func randomPhoneNumber() -> String {
		 "+7(\(Int.random(in: 100...999)))\(Int.random(in: 100...999))\(Int.random(in: 1000...9999))"
	}
	
	public static func randomEmail() -> String {
		 "\(emailWords.randomElement() ?? " ")\(emailWords.randomElement() ?? " ")\(email.randomElement() ?? " ")"
	}
}
