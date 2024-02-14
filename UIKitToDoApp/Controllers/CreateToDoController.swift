//
//  CreateToDoController.swift
//  UIKitToDoApp
//
//  Created by N N on 14/02/2024.
//

import UIKit

class CreateToDoController: UIViewController {

    // MARK: Properties

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Create a new todo item"
        label.font = .boldSystemFont(ofSize: 24)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()

    private lazy var createButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create item", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .green

        button.addTarget(self, action: #selector(createItemPressed), for: .touchUpInside)
        return button
    }


    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }

    // MARK: Selectors

    @objc func createItemPressed() {
        print(#function) // Display function name
    }


    // MARK: Helpers

    func configureUI() {
        view.backgroundColor = .darkGray

        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 16, paddingLeft: 16, paddingRight: 16)

        view.addSubview(createButton)
        createButton.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 16, paddingBottom: 16, paddingRight: 16
        )
    }

}
