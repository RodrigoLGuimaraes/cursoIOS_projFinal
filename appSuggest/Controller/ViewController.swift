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
    
    var elementos = [1,2,3,4,5,6]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "appCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        //Modificaria cell
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func carregarMaisDados(){
        let novaLista = [1,2,3,4,5,6]
        elementos.append(contentsOf: novaLista)
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let ultimoItem = elementos.count - 1
        if indexPath.row == ultimoItem {
            carregarMaisDados()
        }
    }

}

