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

func readJson() -> [Quest]
{
    var arr = [Quest]()
    if let url = Bundle.main.url(forResource: "data", withExtension: "bundle"), let bundle = Bundle(url: url), let path = bundle.path(forResource: "QuestData", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
            let decoder = JSONDecoder()
            if let questResult = try? decoder.decode(QuestResponse.self, from: data){
                for quest in questResult.data{
                    arr.append(Quest(qtype: quest.questType, qid: quest.questID, qname: quest.name))
                }
            }
        } catch let error {
            print("parse error: \(error.localizedDescription)")
        }
    } else {
        print("Invalid filename/path.")
    }
    
    return arr
}

extension Quest {
    static func createQuests() -> [Quest] {
        print("start to read file from json")
        var arr = readJson()
        print("quest count = \(arr.count)")
        return arr
    }
//        var arr = [Quest]()
//
//        // MARK: - Quest
//        struct QuestResponse: Codable {
//            let status: Int
//            let data: [Datum]
//            let message, errorCode: String
//
//            enum CodingKeys: String, CodingKey {
//                case status, data, message
//                case errorCode = "error_code"
//            }
//        }
//
//        // MARK: - Datum
//        struct Datum: Codable {
//            let name: String
//            let questID, questType: Int
//
//            enum CodingKeys: String, CodingKey {
//                case name = "Name"
//                case questID = "QuestID"
//                case questType = "QuestType"
//            }
//        }
//
//        let queryString = ""
//        let urlStr = "http://nt1.me:5000/query_quest?name=\(queryString)"
//        let semaphore = DispatchSemaphore(value: 0)
//        let newUrl = urlStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
//        if let url = URL(string: newUrl) {
//            print(newUrl)
//            let task = URLSession.shared.dataTask(with: url) { (data, response , error) in
//                let decoder = JSONDecoder()
//                if let data = data, let resp = try? decoder.decode(QuestResponse.self, from: data) {
//                    for quest in resp.data{
//                        arr.append(Quest(qtype: quest.questType, qid: quest.questID, qname: quest.name))
//                    }
//                }
//                semaphore.signal()
//            }
//            task.resume()
//            semaphore.wait()
//        }
//
//        print(arr.count)
//        return arr
//    }
}

