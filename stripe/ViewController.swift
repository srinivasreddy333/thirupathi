//
//  ViewController.swift
//  stripe
//
//  Created by Vivek Dharmani on 02/03/20.
//  Copyright © 2020 Vivek Dharmani. All rights reserved.
//

import UIKit
import Stripe

class ViewController: UIViewController {
    lazy var cardTextField: STPPaymentCardTextField = {
        let cardTextField = STPPaymentCardTextField()
        return cardTextField
    }()
    lazy var payButton: UIButton = {
        let button = UIButton(type: .custom)
        button.layer.cornerRadius = 5
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        button.setTitle("Pay", for: .normal)
        button.addTarget(self, action: #selector(pay), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
         view.backgroundColor = .white
               let stackView = UIStackView(arrangedSubviews: [cardTextField, payButton])
               stackView.axis = .vertical
               stackView.spacing = 20
               stackView.translatesAutoresizingMaskIntoConstraints = false
               view.addSubview(stackView)
               NSLayoutConstraint.activate([
                   stackView.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 2),
                   view.rightAnchor.constraint(equalToSystemSpacingAfter: stackView.rightAnchor, multiplier: 2),
                   stackView.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 2),
               ])
    }
    @objc
    func pay() {
        // ...
    }

}

