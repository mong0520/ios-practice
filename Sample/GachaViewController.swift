//
//  GachaViewController.swift
//  Sample
//
//  Created by nwei on 2019/9/20.
//  Copyright © 2019 nwei. All rights reserved.
//

import UIKit

class GachaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let gacahIDs = ["1", "2", "3", "4"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gacahIDs.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gacahIDs[row]
    }
    


    @IBOutlet weak var gachaID: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gachaID.dataSource = self
        gachaID.delegate = self

        // Do any additional setup after loading the view.
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
