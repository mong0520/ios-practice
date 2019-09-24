//
//  StatusViewController.swift
//  Sample
//
//  Created by nwei on 2019/9/20.
//  Copyright © 2019 nwei. All rights reserved.
//

import UIKit
import Foundation

class StatusViewController: UIViewController {

   
    @IBOutlet weak var uidTextField: UITextField!
    @IBOutlet weak var tokenTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    struct Response: Codable {
        var status: Int
        var data: String
        var message: String
        var error_code: String
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showMessage() {
//        print(uidTextField.text!)
//        print(tokenTextField.text!)
        
        let uid = uidTextField.text!
        let token = tokenTextField.text!
        let url = URL(string: "http://localhost:8000/login?uid=\(uid)&token=\(token)")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("error: \(error)")
            } else {
                if let response = response as? HTTPURLResponse {
                    print("statusCode: \(response.statusCode)")
                }
                let decoder = JSONDecoder()
                if let data = data, var resp = try? decoder.decode(Response.self, from: data) {
                    print(resp.data)
                    DispatchQueue.main.async {
                        let alertController = UIAlertController(title: "Success", message: "Login success, SID = \(resp.data)", preferredStyle: UIAlertController.Style.alert)
                        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alertController, animated: true, completion: nil)
                    }
                }
            }
        }
        
        task.resume()
        
    }
    

}
