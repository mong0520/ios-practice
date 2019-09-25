//
//  QuestQueryViewController.swift
//  Sample
//
//  Created by nwei on 2019/9/25.
//  Copyright © 2019 nwei. All rights reserved.
//

import UIKit

class QuestQueryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var questTableView: UITableView!

    @IBOutlet weak var searchBar: UISearchBar!
    
    var quests = Quest.createQuests()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "questCell", for: indexPath) as? QuestTableViewCell else {
        return UITableViewCell()
        }
//        cell.foodImage.image = UIImage(named: food[indexPath.row].image)
//        cell.foodNameLabel.text = food[indexPath.row].name
//        cell.addressLabel.text = food[indexPath.row].address
        cell.questTitle.text = quests[indexPath.row].qname
        cell.questID.text = String(quests[indexPath.row].qid)
        cell.questType.text = String(quests[indexPath.row].qtype)
        return cell
    }
    

  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questTableView.delegate = self
        questTableView.dataSource = self
        questTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
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
