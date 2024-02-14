//
//  ToDoCell.swift
//  UIKitToDoApp
//
//  Created by N N on 14/02/2024.
//

import UIKit

class ToDoCell: UITableViewCell {

    // MARK: Properties

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.font = .boldSystemFont(ofSize: 24)
        label.textColor = .white
        return label
    }()

    private let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "Status: Incomplete"
        label.font = .systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()

    // MARK: Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        backgroundColor = .purple

        addSubview(titleLabel)
        titleLabel.anchor(top: topAnchor, left: leftAnchor, paddingTop: 4, paddingLeft: 8)

        addSubview(statusLabel)
        statusLabel.anchor(top: titleLabel.bottomAnchor, left: leftAnchor, paddingTop: 4, paddingLeft: 8)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Selectors

    // MARK: Helpers

}
