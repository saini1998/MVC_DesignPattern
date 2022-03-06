//
//  UserModel.swift
//  DesignPattern
//
//  Created by Aaryaman Saini on 06/03/22.
//

import Foundation

struct User{
    let firstName, lastName, email: String
    let age: Int
    let location: Location
}

struct Location{
    let lon: Double
    let lat: Double
}
