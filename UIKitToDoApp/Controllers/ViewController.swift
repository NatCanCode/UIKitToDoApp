//
//  ViewController.swift
//  UIKitToDoApp
//
//  Created by N N on 13/02/2024.
//

import UIKit

class ViewController: UITableViewController {

    // MARK: Properties

    // Task array from Model

    // Check API call
//    var toDoItems = [ToDoItem]() {
//        didSet {
//            print("ToDo items was set")
//        }
//    }

    var toDoItems = [
        ToDoItem(title: "Wash dishes", isComplete: true),
        ToDoItem(title: "Feed the cats", isComplete: false),
        ToDoItem(title: "Pay bills", isComplete: true)
    ]

    let reuseIdentifier = "ToDoCell"

    lazy var createNewButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.backgroundColor = .purple
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.layer.zPosition = CGFloat(Float.greatestFiniteMagnitude)

        button.addTarget(self, action: #selector(createNewToDo), for: .touchUpInside)

        return button
    }()

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureTableView()

//        PostService.shared.fetchAllItems()
//        PostService.shared.fetchAllItems { (allItems) in
//            self.toDoItems = allItems
//        }
    }

    // MARK: Selectors

    @objc func createNewToDo() {
//        print(#function) // Display function name

        let vc = CreateToDoController()
        present(vc, animated: true, completion: nil) // Display pop up modal when plus button tapped
    }

    // MARK: Helper functions

    func configureTableView() {
        tableView.backgroundColor = .lightGray

        tableView.register(ToDoCell.self, forCellReuseIdentifier: reuseIdentifier)

        tableView.rowHeight = 75

        tableView.separatorColor = .lightGray

        tableView.separatorInset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)

        tableView.tableFooterView = UIView() // Delete cell skeletons below propoer cells

        tableView.addSubview(createNewButton)
        createNewButton.anchor(bottom: tableView.safeAreaLayoutGuide.bottomAnchor, right: tableView.safeAreaLayoutGuide.rightAnchor, paddingBottom: 16, paddingRight: 16, width: 56, height: 56)
        createNewButton.layer.cornerRadius = 56 / 2
        createNewButton.alpha = 1
    }
}

// MARK: UITableViewDelegate / UITableViewDataSource

extension ViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? ToDoCell else { return UITableViewCell() } // We want to use ToDoCell and alternatively an empty cell

        // cell.backgroundColor = .purple // Test cell display

//        return cell // Display 5 cells
        var getCurrentTask = toDoItems[indexPath.row]
        cell.titleLabel.text = getCurrentTask.title
        

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // Update cell status from Incomplete to Finished

        tableView.deselectRow(at: indexPath, animated: true) // Cell doesn't stay hughlighted when tapped
    }
}
