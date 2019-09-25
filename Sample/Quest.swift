//
//  Quest.swift
//  Sample
//
//  Created by nwei on 2019/9/25.
//  Copyright © 2019 nwei. All rights reserved.
//

import Foundation



struct Quest {
    let qtype: Int
    let qid: Int
    let qname: String
}
// MARK: - Quest
struct QuestResponse: Codable {
    let status: Int
    let data: [Datum]
    let message, errorCode: String

    enum CodingKeys: String, CodingKey {
        case status, data, message
        case errorCode = "error_code"
    }
}

// MARK: - Datum
struct Datum: Codable {
    let name: String
    let questID, questType: Int

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case questID = "QuestID"
        case questType = "QuestType"
    }
}

extension Quest {
    static func createQuests() -> [Quest] {
        var arr = [Quest]()
        
        // MARK: - Quest
        struct QuestResponse: Codable {
            let status: Int
            let data: [Datum]
            let message, errorCode: String

            enum CodingKeys: String, CodingKey {
                case status, data, message
                case errorCode = "error_code"
            }
        }

        // MARK: - Datum
        struct Datum: Codable {
            let name: String
            let questID, questType: Int

            enum CodingKeys: String, CodingKey {
                case name = "Name"
                case questID = "QuestID"
                case questType = "QuestType"
            }
        }
        
        let queryString = ""
        let urlStr = "http://nt1.me:5000/query_quest?name=\(queryString)"
        let newUrl = urlStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        if let url = URL(string: newUrl) {
            print(newUrl)
            let task = URLSession.shared.dataTask(with: url) { (data, response , error) in
                let decoder = JSONDecoder()
                if let data = data, let resp = try? decoder.decode(QuestResponse.self, from: data) {
                    for quest in resp.data{
                        arr.append(Quest(qtype: quest.questType, qid: quest.questID, qname: quest.name))
                    }
                }
            }
            task.resume()
            sleep(1)
        }
        
//        print(arr)
        return arr
    }
}

