//
//  ListView.swift
//  PhotoLink
//
//  Created by Taichi Tsuchida on 2016/09/21.
//  Copyright © 2016年 Taichi Tsuchida. All rights reserved.
//

import UIKit

// class ListView: UIViewController {} ↓


// CustomCell Classを使わない場合
/*
class ListView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageNames = ["mose_1.png", "mose_2.png", "mose_3.png"]
    
    let imageTitles = ["one", "two", "three"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // セルの個数を設定(Delegate)
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageTitles.count
    }
    
    // セルに値を設定(DataSource)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        // セルに表示する値を設定する
        cell.textLabel!.text = imageTitles[indexPath.row]
        
        return UITableViewCell()
    }
    
    /// セルが選択された時(Delegate)
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("セル番号：\(indexPath.row) セルの内容：\(imageTitles[indexPath.row])")
    }
}
 */

class ListView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    /// 画像のファイル名
    let imageNames = ["mose_1.png", "mose_2.png", "mose_3.png"]
    
    /// 画像のタイトル
    let imageTitles = ["one", "two", "three"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /// セルの個数を指定するデリゲートメソッド（必須）
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageTitles.count
    }
    
    /// セルに値を設定するデータソースメソッド（必須）
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // セルを取得
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! ListCell
        
        // セルに値を設定
        cell.setCell(imageNames[indexPath.row], imageTitle: imageTitles[indexPath.row])
        
        return cell
    }
    
    // Buttonを拡張する.
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        /*
        // Shareボタン.
        let myShareButton: UITableViewRowAction = UITableViewRowAction(style: .Normal, title: "Share") { (action, index) -> Void in
            
            tableView.editing = false
            print("share")
            
        }
        myShareButton.backgroundColor = UIColor.blueColor()
        
        // Archiveボタン.
        let myArchiveButton: UITableViewRowAction = UITableViewRowAction(style: .Normal, title: "Archive") { (action, index) -> Void in
            
            tableView.editing = false
            print("archive")
            
        }
        myArchiveButton.backgroundColor = UIColor.grayColor()
        */
        
        // Deleteボタン.
        let myDeleteButton: UITableViewRowAction = UITableViewRowAction(style: .Normal, title: "Delete") { (action, index) -> Void in
            
            tableView.editing = false
            print("delete")
            
        }
        myDeleteButton.backgroundColor = UIColor.redColor()
        
        return [myDeleteButton]
        
    }
}
