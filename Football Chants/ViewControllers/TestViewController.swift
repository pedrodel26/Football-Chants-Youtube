//
//  TestViewController.swift
//  Football Chants
//
//  Created by Pedro Delmondes  on 04/10/2024.
//

import UIKit

class TestViewController: UIViewController {
    
    private lazy var testTableView: UITableView = {
        let ttv = UITableView()
        ttv.translatesAutoresizingMaskIntoConstraints = false
        ttv.backgroundColor = .systemYellow
        ttv.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        return ttv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        addSubviews()
        setupConstraints()
        
    }
    
    private func addSubviews() {
        view.addSubview(testTableView)
    }
    
    private func setupConstraints() {
        testTableView.dataSource = self
        
        NSLayoutConstraint.activate([
            testTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            testTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            testTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            testTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}


extension TestViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = testTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        switch indexPath.row {
        case 0:
            cell.backgroundColor = .systemMint
        case 1:
            cell.backgroundColor = .systemGreen
        default:
            break
        }
        return cell
    }
}
