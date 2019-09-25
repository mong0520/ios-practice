//
//  QuestQueryViewController.swift
//  Sample
//
//  Created by nwei on 2019/9/25.
//  Copyright © 2019 nwei. All rights reserved.
//

import UIKit

class QuestQueryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    @IBOutlet weak var questTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var searchController: UISearchController!
    
    var quests = Quest.createQuests()
     var result = [Quest]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "questCell", for: indexPath) as? QuestTableViewCell else {
        return UITableViewCell()
        }
//        cell.foodImage.image = UIImage(named: food[indexPath.row].image)
//        cell.foodNameLabel.text = food[indexPath.row].name
//        cell.addressLabel.text = food[indexPath.row].address
        cell.questTitle.text = self.result[indexPath.row].qname
        cell.questID.text = String(self.result[indexPath.row].qid)
        cell.questType.text = String(self.result[indexPath.row].qtype)
        return cell
    }
    

  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.result = self.quests
        questTableView.delegate = self
        questTableView.dataSource = self
        self.searchBar.delegate = self
        
        questTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
//        self.searchController =
//          UISearchController(searchResultsController: nil)
//
//        // 將更新搜尋結果的對象設為 self
//        self.searchController.searchResultsUpdater = self as? UISearchResultsUpdating
//
//        // 搜尋時是否隱藏 NavigationBar
//        // 這個範例沒有使用 NavigationBar 所以設置什麼沒有影響
//        self.searchController
//          .hidesNavigationBarDuringPresentation = false
//
//        // 搜尋框的樣式
//        self.searchController.searchBar.searchBarStyle =
//            .prominent
//
//        // 設置搜尋框的尺寸為自適應
//        // 因為會擺在 tableView 的 header
//        // 所以尺寸會與 tableView 的 header 一樣
//        self.searchController.searchBar.sizeToFit()

        // 將搜尋框擺在 tableView 的 header
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        print("[ViewController searchBar] searchText: \(searchText)")
        
        // 沒有搜尋內容時顯示全部內容
        if searchText == "" {
            print("default result")
            self.result = self.quests
        } else {
            print("matching..")
            // 匹配使用者輸入的字首,不區分大小寫
            self.result = []
            
            print("pool size = \(self.quests.count)")
            for quest in self.quests {
                if quest.qname.lowercased().contains(searchText.lowercased()) {
                    self.result.append(quest)
                }
            }
        }
        
        // 重新整理tableView 資料顯示
        self.questTableView.reloadData()
    }
    
    // 搜尋觸發事件,點選虛擬鍵盤上的search按鈕時觸發此方法
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.endEditing(true)
    }
    
    // 書籤按鈕觸發事件
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        print("搜尋歷史")
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        // 搜尋內容置空
        searchBar.text = ""
        self.result = self.quests
        self.questTableView.reloadData()
    }
    
    func searchBarSearchButtonClicked() {
        print("7 searchBarSearchButtonClicked")
        
        searchBar.endEditing(true)
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
