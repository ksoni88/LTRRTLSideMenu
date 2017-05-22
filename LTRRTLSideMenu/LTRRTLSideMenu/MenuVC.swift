//
//  MenuVC.swift
//  LTRRTLSideMenu
//
//  Created by Krunal Soni on 21/05/17.
//  Copyright © 2017 Krunal Soni. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    
    @IBOutlet weak var tblMenu: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionMenu(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        self.openSegue("openMenu", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    //MARK: UITableViewDataSource
    
    func numberOfSectionsInTableView(_ tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(NSLocalizedString("Index", comment: "Index Label in Menu")) \(indexPath.row)"
        return cell
    }
    
    
}

protocol MenuDelegate {
    func openSegue(_ segueName: String, sender: AnyObject?)
    func openMenu()
}


extension MenuVC : MenuDelegate {
    func openSegue(_ segueName: String, sender: AnyObject?) {
        dismiss(animated: true){
            
        }
    }
    func openMenu(){
        performSegue(withIdentifier: "openMenu", sender: nil)
    }
}

