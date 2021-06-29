//
//  ConversationController.swift
//  FireChat
//
//  Created by naresh banavath on 15/04/21.
//

import UIKit
class ConversationController: UIViewController
{
  //MARK: - Properties
    var tableView = UITableView()
  //MARK: - LifeCycle Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    //view.backgroundColor = .red
    configureUI()
    view.addSubview(tableView)
    tableView.frame = view.frame
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    tableView.dataSource = self
    tableView.tableFooterView = UIView()
  }
  //MARK:- Selectors
  @objc func showProfile()
  {
    print(123)
  }
  //MARK:- Helper Funcs
  func configureUI()
  {
    view.backgroundColor = .white
    configureNavigationBar()

    let leftImage = UIImage(systemName: "person.circle.fill")
    navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftImage, style: .plain, target: self, action: #selector(showProfile))
      }
  func configureNavigationBar()
  {
    self.navigationController?.navigationBar.prefersLargeTitles = true
    //self.navigationController?.navigationBar.barTintColor = UIColor.systemPurple
    self.navigationController?.navigationBar.tintColor = UIColor.white
    
    navigationItem.title = "Messages"
    let appearance = UINavigationBarAppearance()
    
    appearance.backgroundColor = UIColor.systemPurple
    appearance.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
    appearance.titleTextAttributes = [.foregroundColor : UIColor.white]
    navigationController?.navigationBar.standardAppearance = appearance
    navigationController?.navigationBar.compactAppearance = appearance
    navigationController?.navigationBar.scrollEdgeAppearance = appearance
    
    
  }
   
}
extension ConversationController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "sample text \(indexPath.row)"
        return cell!
    }
    
    
}
