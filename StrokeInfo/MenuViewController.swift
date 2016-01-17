//
//  MenuViewController.swift
//  StrokeInfo
//
//  Created by Will Meyer on 1/16/16.
//  Copyright © 2016 Will Meyer. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet private var menuTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientView = GradientView(frame: UIScreen.mainScreen().bounds)
        self.view.addSubview(gradientView)
        self.view.sendSubviewToBack(gradientView)
        
        self.setMenuTableViewProperties()
    }
    
    func setMenuTableViewProperties() {
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.tableFooterView = UIView(frame: CGRectZero)
        menuTableView.alwaysBounceVertical = false
        menuTableView.registerNib(UINib(nibName: "StrokeInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "strokeInfoCell")
    }
    
    func getTextAtRow(row:Int) -> String {
        switch (row) {
            case 0:
                return "Suspected new stroke?"
            case 1:
                return "Ischemic Stroke"
            case 2:
                return "Intracerebral Hemorrhagic Stroke"
            case 3:
                return "Subarachnoid (Aneurysmal) Hemorrhagic Stroke"
            default:
                return ""
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("strokeInfoCell") as! StrokeInfoTableViewCell
        cell.infoLabel.text = getTextAtRow(indexPath.row)
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
}

