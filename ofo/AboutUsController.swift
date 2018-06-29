//
//  AboutUsController.swift
//  ofo
//
//  Created by Mr wngkai on 2018/6/29.
//  Copyright © 2018年 Mr wngkai. All rights reserved.
//

import UIKit
import SWRevealViewController

class AboutUsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let revealVC = revealViewController() {
            revealVC.rearViewRevealWidth = 280
            navigationItem.leftBarButtonItem?.target = revealVC
            //侧边栏切换  oc筛选器 #selector(SWRevealViewController.revealToggle(_:)
            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
            //给视图加一个平移的手势
            view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
