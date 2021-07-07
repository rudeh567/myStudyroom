//
//  ViewController.swift
//  Mytodolist
//
//  Created by GSM08 on 2021/07/06.
//

import UIKit

var list = [Todolist]()

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var editButton: UIBarButtonItem!
    @IBOutlet var tableView: UITableView!
    
    let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneButtonTap))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        loadAllData()
        print(list.description)
        
        doneButton.style = .plain
        doneButton.target = self
    }
    
    @objc func doneButtonTap() {
        self.navigationItem.leftBarButtonItem = editButton
        tableView.setEditing(false, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        list.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        saveAllData()
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = list[indexPath.row].title
        cell.detailTextLabel?.text = list[indexPath.row].content
        if list[indexPath.row].isComplete {
            cell.accessoryType = .checkmark
        }else{
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard !list[indexPath.row].isComplete else {
            return
        }
        
        list[indexPath.row].isComplete = true
        
        let dialog = UIAlertController(title: "Todo List", message: "일을 완료했습니다.", preferredStyle: .alert)
        let action = UIAlertAction(title: "확인", style: UIAlertAction.Style.default)
        dialog.addAction(action)
        self.present(dialog, animated: true, completion: nil)
        
        tableView.reloadData()
    }
    
    func saveAllData() {
        let data = list.map {
            [
                "title": $0.title,
                "content": $0.content!,
                "isComplete": $0.isComplete
            ]
        }
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(data, forKey: "items")
        userDefaults.synchronize()
    }
    
    func loadAllData() {
        let userDefaults = UserDefaults.standard
        guard let data = userDefaults.object(forKey: "items") as? [[String: AnyObject]] else {
            return
        }
        
        print(data.description)
        
        print(type(of: data))
        list = data.map {
            var title = $0["title"] as? String
            var content = $0["content"] as? String
            var isComplete = $0["isComplete"] as? Bool
            
            return Todolist(title: title!, content: content!, isComplete: isComplete!)
        }
    }
    
    @IBAction func btnEdit(_ sender: Any) {
        // 리스트 비어있을 때 return
        guard !list.isEmpty else {
            return
        }
        self.navigationItem.leftBarButtonItem = doneButton
        tableView.setEditing(true, animated: true)
    }
    
}

