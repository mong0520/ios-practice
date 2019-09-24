//
//  StatusViewController.swift
//  Sample
//
//  Created by nwei on 2019/9/20.
//  Copyright © 2019 nwei. All rights reserved.
//

import UIKit
import Foundation

var sid = ""
var PlayerName = ""

class StatusViewController: UIViewController {

   
    @IBOutlet weak var uidTextField: UITextField!
    @IBOutlet weak var tokenTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    //    var activityIndicator:UIActivityIndicatorView!
    
    struct Response: Codable {
        var status: Int
        var data: String
        var message: String
        var error_code: String
    }
    
    
    struct ResponseStatus: Codable {
        let status: Int
        let data: DataClass
        let message, errorCode: String

        enum CodingKeys: String, CodingKey {
            case status, data, message
            case errorCode = "error_code"
        }
    }

    // MARK: - DataClass
    struct DataClass: Codable {
        let acceptDisciple: Bool
        let cardMax: Int
        let comment: String
        let friendCnt: Int
        let gacha: Gacha
        let heroName: String
        let lv: Int
        let name: String
        let onlyFriendDisciple: Bool
        let openID, staminaMax, uid, uzuKey: Int
        let 年代塔之記ID, 幸運球, 戒指: Int
        let 精靈石: String
        let 聖靈幣, 賭場幣, 轉蛋卷, 轉蛋幣: Int
        let 金幣: String

        enum CodingKeys: String, CodingKey {
            case acceptDisciple = "accept_disciple"
            case cardMax, comment, friendCnt, gacha, heroName, lv, name
            case onlyFriendDisciple = "only_friend_disciple"
            case openID = "open_id"
            case staminaMax, uid
            case uzuKey = "uzu_key"
            case 年代塔之記ID, 幸運球, 戒指, 精靈石, 聖靈幣, 賭場幣, 轉蛋卷, 轉蛋幣, 金幣
        }
    }

    // MARK: - Gacha
    struct Gacha: Codable {
        let event, legend, story: [Event]
    }

    // MARK: - Event
    struct Event: Codable {
        let gachaTitle, gachaCount, gachaID, itemName: String

        enum CodingKeys: String, CodingKey {
            case gachaTitle = "GachaTitle"
            case gachaCount = "GachaCount"
            case gachaID = "GachaID"
            case itemName = "ItemName"
        }
    }


   
    override func viewDidLoad() {
        super.viewDidLoad()

        activityIndicator.hidesWhenStopped = true
        // Do any additional setup after loading the view.
//        activityIndicator = UIActivityIndicatorView(style:
//            UIActivityIndicatorView.Style.gray)
//        activityIndicator.center=self.view.center
//        self.view.addSubview(activityIndicator);
    }
    
//
    func playIndicator(){
        //进度条开始转动
        activityIndicator.startAnimating()
    }

    func stopIndicator(){
        //进度条停止转动
        activityIndicator.stopAnimating()
    }
    
    @IBAction func showMessage() {
//        print(uidTextField.text!)
//        print(tokenTextField.text!)
        self.playIndicator()
        let uid = uidTextField.text!
        let token = tokenTextField.text!
        let url = URL(string: "http://nt1.me:5000/login?uid=\(uid)&token=\(token)")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("error: \(error)")
            } else {
                if let response = response as? HTTPURLResponse {
                    print("statusCode: \(response.statusCode)")
                }
                let decoder = JSONDecoder()
                if let data = data, let resp = try? decoder.decode(Response.self, from: data) {
                    print(resp.data)
                    sid = resp.data
                    // get status
                    let urlStatus = URL(string: "http://nt1.me:5000/status?sid=\(sid)")!
                    let taskStatus = URLSession.shared.dataTask(with: urlStatus) { (data, response, error) in
                        if let error = error {
                            print("error: \(error)")
                        } else {
                            if let response = response as? HTTPURLResponse {
                                print("statusCode: \(response.statusCode)")
                            }
                            let decoder = JSONDecoder()
                            if let data = data, let resp = try? decoder.decode(ResponseStatus.self, from: data) {
                                print(resp.data.name)
                                PlayerName = resp.data.name
                                DispatchQueue.main.async {
                                    let alertController = UIAlertController(title: "Success", message: "歡迎回來,  \(resp.data.name)\n精靈石 = \(resp.data.精靈石)\n轉蛋幣 = \(resp.data.轉蛋幣)\n年代塔之記ID = \(resp.data.年代塔之記ID)", preferredStyle: UIAlertController.Style.alert)
                                    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                                    self.present(alertController, animated: true, completion: nil)
                                    self.stopIndicator()
                                }
                            }
                        }
                    }
                    taskStatus.resume()
                }
            }
        }
        task.resume()
    }
}

