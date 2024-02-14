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

    private let itemTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: 18)
        textField.textColor = .black
        textField.backgroundColor = .lightGray
        textField.layer.cornerRadius = 8

        let paddingView = UIView(frame: CGRectMake(0, 0, 15, textField.frame.height)) // Create inner padding
        textField.leftView = paddingView
        textField.leftViewMode = UITextField.ViewMode.always
//        textField.keyboardAppearance = .dark
//        textField.keyboardType = .numberPad

        return textField
    }()

    private lazy var createButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create item", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 10

        button.addTarget(self, action: #selector(createItemPressed), for: .touchUpInside)
        return button
    }()

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }

    // MARK: Selectors

    @objc func createItemPressed() {
//        print(#function) // Print out function name in console
//        print(itemTextField.text) // Print out user input in console
    }


    // MARK: Helpers

    func configureUI() {
        view.backgroundColor = .darkGray

        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 16, paddingLeft: 16, paddingRight: 16)

        view.addSubview(itemTextField)
        itemTextField.anchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 128, paddingLeft: 16, paddingRight: 16, height: 45)
        itemTextField.delegate = self

        view.addSubview(createButton)
        createButton.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 32, paddingBottom: 32, paddingRight: 32, height: 50)
    }

}

// MARK: UITextFieldDelegate

extension CreateToDoController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // Press return to have the keyboard dismissed
        return true
    }
}
