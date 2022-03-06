//
//  NetworkService.swift
//  DesignPattern
//
//  Created by Aaryaman Saini on 06/03/22.
//

import Foundation

class NetworkService{
    static let share = NetworkService()  // Singleton
    private init() {}
    
    private var user: User?
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void){
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async {
                if email == "test@test.com" && password == "password"{
                    self.user = User(firstName: "Emmanuel", lastName: "Okawara", email: "test@test.com", age: 23, location: Location(lon: 2.69420, lat: -4.20693))
                    completion(true)
                } else{
                    completion(false)

                }
            }
        }
    }
    
    func getLoggedInUser() -> User?{
        return user 
    }
}
