//
//  ProfileViewController.swift
//  Navigagation
//
//  Created by Petr Kokin on 05.10.2023.
//


import UIKit

class ProfileViewController: ViewController {

    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Мой профиль", for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor(.yellow, for: .normal)
        button.setTitleColor(.green, for: .highlighted)

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Мой профиль"
        view.backgroundColor = .systemYellow

        view.addSubview(backButton)

        let safeAreaLayotGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([backButton.leadingAnchor.constraint(equalTo: safeAreaLayotGuide.leadingAnchor, constant: 80.0),
                                     backButton.trailingAnchor.constraint(equalTo: safeAreaLayotGuide.trailingAnchor, constant: -80.0),
                                     backButton.topAnchor.constraint(equalTo: safeAreaLayotGuide.topAnchor, constant: 140.0),
                                     backButton.heightAnchor.constraint(equalToConstant: 35)])

        backButton.addTarget(self, action: #selector(profileButtonPressed(_:)), for: .touchUpInside)

    }

    @objc func profileButtonPressed(_ sender: UIButton){

        dismiss(animated: true)
    }
}




