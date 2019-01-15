//
//  GenericTableVC.swift
//  GenericTableVC
//
//  Created by Md. Shaiful Islam on 12/7/18.
//  Copyright © 2018 Md. Shaiful Islam Sujohn. All rights reserved.
//

import UIKit

class GenericTableVC<T, Cell: UITableViewCell>: UITableViewController {

    //var items: [T]
    var configure: (Cell, T) -> Void
    var selectHandler: (T) -> Void
    //var xib: Bool?
    
    var genericModel: GenericTableModel<T>
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Initializer
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(genericModel: GenericTableModel<T>, configure: @escaping (Cell, T) -> Void, selectHandler: @escaping (T) -> Void) {
        self.genericModel = genericModel
        self.configure = configure
        self.selectHandler = selectHandler
        
        super.init(style: .plain)
        if genericModel.xib == true {
            print(String(describing: Cell.self))
            self.tableView.register(UINib(nibName: String(describing: Cell.self), bundle: nil), forCellReuseIdentifier: String(describing: Cell.self))
        } else {
            self.tableView.register(Cell.self, forCellReuseIdentifier: String(describing: Cell.self))
        }
        self.tableView.reloadData()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.genericModel.numberOfSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.genericModel.items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Cell.self), for: indexPath) as! Cell
        let item = self.genericModel.items[indexPath.row]
        configure(cell, item)
        return cell
    }

    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.genericModel.cellHeight
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let item = self.genericModel.items[indexPath.row]
        selectHandler(item)
    }

}
