//
//  JsonParser.swift
//  Collection
//
//  Created by Вадим Амбарцумян on 22.06.2023.
//

import Foundation

class NetworkManager {
    
    public func getPhotos(completion: @escaping (UnsplashPhoto) -> Void) {
            let URL = URL(string:  "https://api.unsplash.com/photos/random?client_id=9kKxmr_A7OcbNo-d-xn2ubsXgFSX2OZRsyO4XsHRqiw")
            var request = URLRequest(url: URL!)
            request.allHTTPHeaderFields = ["authToken": "nil"]
            request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else {return}
                do {
                    let res = try JSONDecoder().decode(UnsplashPhoto.self, from: data)
                    completion(res)
                } catch {
                    print(error)
                }
            }
            .resume()
        }
    }
