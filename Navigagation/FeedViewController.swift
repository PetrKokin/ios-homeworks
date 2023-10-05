//
//  FeedViewController.swift
//  Navigagation
//
//  Created by Petr Kokin on 05.10.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
let post = Post(title: "Заголовок")

    private lazy var backButton: UIButton = {
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

        title = "ПРОФИЛЬ"
        view.backgroundColor = .systemYellow

        view.addSubview(backButton)

        let safeAreaLayotGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([backButton.leadingAnchor.constraint(equalTo: safeAreaLayotGuide.leadingAnchor, constant: 80.0),
                                     backButton.trailingAnchor.constraint(equalTo: safeAreaLayotGuide.trailingAnchor, constant: -80.0),
                                     backButton.topAnchor.constraint(equalTo: safeAreaLayotGuide.topAnchor, constant: 140.0),
                                     backButton.heightAnchor.constraint(equalToConstant: 35)])

        backButton.addTarget(self, action: #selector(feedButtonPressed(_:)), for: .touchUpInside)

    }

    @objc func feedButtonPressed(_ sender: UIButton){

        dismiss(animated: true)
    }
}

