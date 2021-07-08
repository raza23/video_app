//
//  ViewController.swift
//  Video_Work1
//
//  Created by Raza Shareef on 7/7/21.
//

import UIKit

struct Video {
    let name: String
    let url: String
}
//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


class ViewController: UITableViewController {
    
    let videos = [Video(name: "Test", url: "https://youtu.be/Mp2Op0F8ULI"),Video(name: "Test1", url: "https://youtu.be/wMAG3LtMk_E")]
    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Video App"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.tableFooterView = UIView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        cell.textLabel?.text = videos[indexPath.row].name
        
        return cell
    }
}
