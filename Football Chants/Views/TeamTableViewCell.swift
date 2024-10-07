//
//  TeamTableViewCell.swift
//  Football Chants
//
//  Created by Pedro Delmondes  on 07/10/2024.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    static let cellId = "TeamTableViewCell"
    
    //MARK: - UI
    
    private lazy var containerView: UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    private lazy var contentStackVw: UIStackView = {
        let stackVmw = UIStackView()
        stackVmw.translatesAutoresizingMaskIntoConstraints = false
        stackVmw.spacing = 4
        stackVmw.axis = .vertical
        return stackVmw
    }()
    
    private lazy var nameLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var foundedLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var jobLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var infoLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    func configure() {
        containerView.backgroundColor = TeamType.arsenal.background
        
        nameLbl.text = "Arsenal"
        foundedLbl.text = "1890"
        jobLbl.text = "Coach manager"
        infoLbl.text = "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
        
        self.contentView.addSubview(containerView)
        
        containerView.addSubview(contentStackVw)
        
        contentStackVw.addArrangedSubview(nameLbl)
        contentStackVw.addArrangedSubview(foundedLbl)
        contentStackVw.addArrangedSubview(jobLbl)
        contentStackVw.addArrangedSubview(infoLbl)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: containerView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
            contentStackVw.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
            contentStackVw.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
            contentStackVw.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            contentStackVw.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8)
        ])
    }
}

//#Preview {
//    TeamTableViewCell()
//}
