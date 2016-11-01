//
//  CustomBarController.swift
//  AutoLayoutAssignment
//
//  Created by Chee Kok Ban on 1/11/16.
//  Copyright © 2016 Chee Kok Ban. All rights reserved.
//

import UIKit

class CustomBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let controller1 = UIViewController()
        controller1.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.contacts, tag: 1)
        let nav1 = UINavigationController(rootViewController: controller1)
        
        let controller2 = UIViewController()
        controller2.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.contacts, tag: 2)
        let nav2 = UINavigationController(rootViewController: controller2)
        
        let controller3 = UIViewController()
        let nav3 = UINavigationController(rootViewController: controller3)
        nav3.title = ""
        
        let controller4 = UIViewController()
        controller4.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.contacts, tag: 4)
        let nav4 = UINavigationController(rootViewController: controller4)
        
        let controller5 = UIViewController()
        controller5.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.contacts, tag: 5)
        let nav5 = UINavigationController(rootViewController: controller5)
        
        
        self.viewControllers = [nav1, nav2, nav3, nav4, nav5]
        self.setupMiddleButton()
    }
    
    // MARK: - Setups
    
    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = self.view.bounds.height - menuButtonFrame.height
        menuButtonFrame.origin.x = self.view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame
        
        menuButton.backgroundColor = UIColor.white
        menuButton.layer.cornerRadius = menuButtonFrame.height/2
        self.view.addSubview(menuButton)
        
        menuButton.setImage(UIImage(named: "autoto_camera"), for: UIControlState.normal)
        menuButton.addTarget(self, action: Selector(("menuButtonAction:")), for: UIControlEvents.touchUpInside)
        
        self.view.layoutIfNeeded()
    }
    
    
    // MARK: - Actions
    
    func menuButtonAction(sender: UIButton) {
        
        //selected the third btn in the tab bar
        self.selectedIndex = 2
    }
        
        
        // Do any additional setup after loading the view.
    

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
