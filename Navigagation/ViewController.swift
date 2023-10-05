//
//  ViewController.swift
//  Navigagation
//
//  Created by Petr Kokin on 03.10.2023.
//

import UIKit

class ViewController: UIViewController {

    private lazy var feedButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Моя лента", for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor(.yellow, for: .normal)
        button.setTitleColor(.green, for: .highlighted)

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(feedButton)

        let safeAreaLayotGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([feedButton.leadingAnchor.constraint(equalTo: safeAreaLayotGuide.leadingAnchor, constant: 80.0),
                                     feedButton.trailingAnchor.constraint(equalTo: safeAreaLayotGuide.trailingAnchor, constant: -80.0),
                                     feedButton.topAnchor.constraint(equalTo: safeAreaLayotGuide.topAnchor, constant: 140.0),
                                     feedButton.heightAnchor.constraint(equalToConstant: 35)])

        feedButton.addTarget(self, action: #selector(feedButtonPressed(_:)), for: .touchUpInside)

    }

    @objc func feedButtonPressed(_ sender: UIButton) {

        let feedViewController = FeedViewController()

        feedViewController.modalTransitionStyle = .flipHorizontal
        feedViewController.modalPresentationStyle = .formSheet

        present(feedViewController, animated: true)
    }


}

