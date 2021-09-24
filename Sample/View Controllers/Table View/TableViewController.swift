//
//  TableViewController.swift
//  PanModalDemo
//
//  Created by Pedro Paulo de Amorim on 24/09/2021.
//  Copyright © 2021 Detail. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController, PanModalPresentable {

    private let members = (0..<100).map { "Item \($0)" }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }

    // MARK: - View Configurations

    func setupTableView() {

        tableView.contentInset = UIEdgeInsets(top: 44.0, left: 0.0, bottom: 0.0, right: 0.0)
        tableView.separatorStyle = .none
        tableView.backgroundColor = #colorLiteral(red: 0.1019607843, green: 0.1137254902, blue: 0.1294117647, alpha: 1)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? UITableViewCell
            else { return UITableViewCell() }

        cell.textLabel?.text = members[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }

    var panScrollable: UIScrollView? {
        return tableView
    }

}
