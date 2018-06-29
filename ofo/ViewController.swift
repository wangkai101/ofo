//
//  ViewController.swift
//  ofo
//
//  Created by Mr wngkai on 2018/6/27.
//  Copyright © 2018年 Mr wngkai. All rights reserved.
//

import UIKit
import SWRevealViewController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "msg_icon_hot_msg"))
        self.navigationItem.leftBarButtonItem?.image = #imageLiteral(resourceName: "leftBottomImage").withRenderingMode(.alwaysOriginal)
        self.navigationItem.rightBarButtonItem?.image = #imageLiteral(resourceName: "rightBottomImage").withRenderingMode(.alwaysOriginal)
        
        //去掉导航栏返回字back
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        //侧边栏
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


}

