//
//  MVVMViewController.swift
//  ArchExamples
//
//  Created by Wilfred Furthado M on 08/07/19.
//  Copyright © 2019 Pervacio. All rights reserved.
//

import UIKit

class MVVMViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.intializeArray {
            self.tableView.reloadData()
        }
    }
}

extension MVVMViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = viewModel.nameText(index: indexPath.row)
        cell.detailTextLabel?.text = viewModel.surnameText(index: indexPath.row)
        
        return cell
    }
}
