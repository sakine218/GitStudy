//
//  MyPageViewController.swift
//  GitStudy
//
//  Created by Sakine Nishibayashi on 2019/03/22.
//  Copyright © 2019 Sakine Nishibayashi. All rights reserved.
//

import UIKit

class MyPageViewController: UIViewController {
    
    let ud = UserDefaults.standard
    var isAssign: Bool?
    
    override func viewWillAppear(_ animated: Bool) {
        firstAssignDecision()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func firstAssignDecision() {
        isAssign = ud.object(forKey: "isAssign") as? Bool
        if isAssign == nil || isAssign == true {
            print("プロフィール未登録")
            isAssign = false
            ud.set(isAssign, forKey: "isAssign")
        } else {
            print("プロフィール登録済み")
        }
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
