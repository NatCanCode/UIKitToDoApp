//
//  ViewController.swift
//  UIKitToDoApp
//
//  Created by N N on 13/02/2024.
//

import UIKit

class ViewController: UITableViewController {

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

       configureTableView()
    }

    // MARK: Helper functions

    func configureTableView() {
        tableView.backgroundColor = .lightGray

    }
}

// MARK: UITableViewDelegate / UITableViewDataSource

extension ViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)

        return cell // Display 5 cells
    }
}
