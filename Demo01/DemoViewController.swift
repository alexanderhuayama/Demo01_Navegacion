//
//  DemoViewController.swift
//  Demo01
//
//  Created by Giovanni on 10/13/17.
//  Copyright © 2017 Giovanni. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    func setNavigationBar(){
        self.navigationItem.title = "DemoView"
        
        // Crea el boton para ir a la izquierda
        let l_button = UIButton(type: UIButtonType.custom)
        l_button.setTitle("", for: UIControlState.normal)
        l_button.addTarget(self, action: #selector(DemoViewController.pressLeftNavigationButton), for: UIControlEvents.touchUpInside)
        l_button.sizeToFit()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: l_button)
        
        // Crea el boton para ir a la derecha
        let r_button = UIButton(type: UIButtonType.custom)
        r_button.setTitle("DemoTableView", for: UIControlState.normal)
        r_button.addTarget(self, action: #selector(DemoViewController.pressRightNavigationButton), for: UIControlEvents.touchUpInside)
        r_button.setTitleColor(UIColor.black, for: UIControlState.normal)
        r_button.titleLabel?.font = UIFont(name: "Helvetica", size: 10)
        r_button.sizeToFit()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: r_button)    }
    
    func pressLeftNavigationButton(){
      
    }
    
    func pressRightNavigationButton(){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Storyboard", bundle:nil)
        
        let objSomeViewController = storyBoard.instantiateViewController(withIdentifier: "demoTableViewController") as! DemoTableViewController
        
        // If you want to push to new ViewController then use this
        self.navigationController?.pushViewController(objSomeViewController, animated: true)

        
        //self.navigationController?.popViewController (animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
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
