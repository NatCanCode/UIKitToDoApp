//
//  ViewController.swift
//  UIKitToDoApp
//
//  Created by N N on 13/02/2024.
//

import UIKit

class ViewController: UITableViewController {

    // MARK: Properties

    let reuseIdentifier = "ToDoCell"

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

       configureTableView()
    }

    // MARK: Helper functions

    func configureTableView() {
        tableView.backgroundColor = .lightGray

        tableView.register(ToDoCell.self, forCellReuseIdentifier: reuseIdentifier)

        tableView.rowHeight = 75

        tableView.separatorColor = .lightGray

        tableView.separatorInset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
    }
}

// MARK: UITableViewDelegate / UITableViewDataSource

extension ViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? ToDoCell else { return UITableViewCell() } // We want to use ToDoCell and alternatively an empty cell

        // cell.backgroundColor = .purple // Test cell display

        return cell // Display 5 cells
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // Update cell status from Incomplete to Finished

        tableView.deselectRow(at: indexPath, animated: true) // Cell doesn't stay hughlighted when tapped
    }
}
