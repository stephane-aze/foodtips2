//
//  Networking.swift
//  FoodTips2
//
//  Created by Etudiant on 19/11/2021.
//

import Foundation

struct Networking {
    var urlSession = URLSession.shared

    func sendPostRequest(
        to url: URL,
        body: Data,
        then handler: @escaping (Result<Data, Error>) -> Void
    ) {
        // To ensure that our request is always sent, we tell
        // the system to ignore all local cache data:
        var request = URLRequest(
            url: url,
            cachePolicy: .reloadIgnoringLocalCacheData
        )
        
        request.httpMethod = "POST"
        /**  FormData image  **/
        let postDict : [String: Any] = ["image": body]
        guard let postData = try? JSONSerialization.data(withJSONObject: postDict, options: []) else {
                return
            }

        request.httpBody = postData
        /**               */
        //request.httpBody = body

        let task = urlSession.dataTask(
            with: request,
            completionHandler: { data, response, error in
                if let error = error {
                        print ("error: \(error)")
                        return
                    }
                    guard let response = response as? HTTPURLResponse,
                        (200...299).contains(response.statusCode) else {
                        print ("server error")
                        return
                    }
                    if let mimeType = response.mimeType,
                        mimeType == "application/json",
                        let data = data,
                        let dataString = String(data: data, encoding: .utf8) {
                        print ("got data: \(dataString)")
                    }
                
            }
        )

        task.resume()
    }
}
