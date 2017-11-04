//
//  ViewController.swift
//  appSuggest
//
//  Created by Rodrigo Guimaraes on 2017-10-20.
//  Copyright © 2017 RodrigoLG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var elementos = [AppInfo]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementos.count
    }
    
    func formatPriceInCents(price : Int) -> String{
        if price == 0{
            return "FREE"
        }
        
        return "$\(Int(price/100)).\(price%100)"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "appCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! AppTableViewCell
        
        let appInfo = elementos[indexPath.row]
        cell.name.text = appInfo.name
        cell.preco.text = formatPriceInCents(price: appInfo.price)
        cell.imagemBG.downloadedFrom(link: appInfo.imageURL, contentMode: UIViewContentMode.scaleAspectFill)
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appInfo = AppInfo(name: "Soda Dungeon", price: 99, imageURL: "https://presskits.armorgames.com/game/soda-dungeon/images/SodaDungeonArt.png")
        
        for _ in 0..<10{
            elementos.append(appInfo)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func carregarMaisDados(){
        let appInfo = AppInfo(name: "Novos Dados", price: 199, imageURL: "https://presskits.armorgames.com/game/soda-dungeon/images/SodaDungeonArt.png")
        
        for _ in 0..<10{
            elementos.append(appInfo)
        }
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let ultimoItem = elementos.count - 1
        if indexPath.row == ultimoItem {
            carregarMaisDados()
        }
    }

}

