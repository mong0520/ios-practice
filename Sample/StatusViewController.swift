//
//  StatusViewController.swift
//  Sample
//
//  Created by nwei on 2019/9/20.
//  Copyright © 2019 nwei. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController {

   
    
    @IBOutlet weak var statusTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showMessage() {
        print("hello")
        statusTextField.text = """
        精靈石 = 25555
        轉蛋卷 = 1193
        金幣 = 1065970197
        聖靈幣 = 176263677
        戒指 = 4360169
        賭場幣 = 8630054
        轉蛋幣 = 45377450
        幸運球 = 131
        only_friend_disciple = false
        friendCnt = 71
        comment = 抽什麼來什麼
        uzu_key = 0
        open_id = 185250162
        name = 把拔＠ＰＴＴ
        staminaMax = 180
        cardMax = 1500
        uid = 1965350
        heroName = 阿倫
        lv = 260
        accept_disciple = true
        年代塔之記 ID = 17
        """
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
