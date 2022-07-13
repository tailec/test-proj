//
//  API.swift
//  TestInteviewProj
//
//  Created by krawiecp on 13/07/2022.
//

import Foundation
import RxSwift
import RxCocoa

// https://jsonplaceholder.typicode.com/users
// https://jsonplaceholder.typicode.com/comments

struct User {
    let id: String
    let name: String
}

extension User: Decodable { }

class API {
    private let session = URLSession.shared
    
    func login(username: String, password: String) -> Observable<User?> {
        .never()
    }
}
