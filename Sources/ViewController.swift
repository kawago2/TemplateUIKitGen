import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup view appearance
        view.backgroundColor = .systemBackground
        title = "Home"
        
        setupLayout()
    }
    
    private func setupLayout() {
        // Create a central container stack view
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Welcome label
        let label = UILabel()
        label.text = "Welcome to UIKit Template!"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .label
        
        // Description label
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Generated using XcodeGen"
        descriptionLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        descriptionLabel.textColor = .secondaryLabel
        
        // Add to stack
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(descriptionLabel)
        
        // Add stack to view
        view.addSubview(stackView)
        
        // Setup constraints
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
