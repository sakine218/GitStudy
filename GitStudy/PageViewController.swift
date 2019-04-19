//
//  PageViewController.swift
//  GitStudy
//
//  Created by Sakine Nishibayashi on 2019/04/17.
//  Copyright © 2019 Sakine Nishibayashi. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    let sboard: UIStoryboard? = UIStoryboard(name:"Main", bundle:nil)
    
    var pageViewControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        //let homeViewController: HomeViewController = storyboard!.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        let secondViewController: SecondViewController = storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        //全ページを配列に格納
        //pageViewControllers = [homeViewController,secondViewController]
        //UIPageViewControllerに表示対象を設定
        setViewControllers([pageViewControllers[0]], direction: .forward, animated: false, completion: nil)


        // Do any additional setup after loading the view.
    }
    
    func pageViewController(_ pageViewController:
        UIPageViewController, viewControllerBefore viewController:UIViewController) -> UIViewController? {
        //右にスワイプした場合に表示したいviewControllerを返す
        //ようはページを戻す
        //今表示しているページは何ページ目か取得する
        let index = pageViewControllers.index(of: viewController)
        if index == 0 {
            //1ページ目の場合は何もしない
            return nil
        } else {
            //1ページ目の意外場合は1ページ前に戻す
            return pageViewControllers[index!-1]
        }
    }
    
    func pageViewController(_ pageViewController:
        UIPageViewController, viewControllerAfter viewController: UIViewController) ->
        UIViewController? {
            //左にスワイプした場合に表示したいviewControllerを返す
            //ようはページを進める
            //今表示しているページは何ページ目か取得する
            let index = pageViewControllers.index(of: viewController)
            if index == pageViewControllers.count-1 {
                //最終ページの場合は何もしない
                return nil
            } else {
                //最終ページの意外場合は1ページ進める
                return pageViewControllers[index!+1]
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
