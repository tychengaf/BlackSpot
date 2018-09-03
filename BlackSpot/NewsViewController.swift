//
//  NewsViewController.swift
//  BlackSpot
//
//  Created by Tony Cheng on 2/9/2018.
//  Copyright © 2018 Tony Cheng. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    var objects = [NewsItem]()
    let allNews = NewsBank()
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let news1 = NewsItem(title: "first news", link: "https://www.apple.com")
//        let news2 = NewsItem(title: "second news", link: "https://www.nike.com")
//        let news3 = NewsItem(title: "third news", link: "https://www.udemy.com")
//        objects.append(news1)
//        objects.append(news2)
//        objects.append(news3)
//        print(objects)
        // Do any additional setup after loading the view.
        myTableView.dataSource = self
        myTableView.delegate = self
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allNews.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = allNews.list[indexPath.row].newsTitle
        cell.textLabel?.numberOfLines = 0;
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let url = URL(string: allNews.list[indexPath.row].newsLink)!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            //If you want handle the completion block than
            UIApplication.shared.open(url, options: [:], completionHandler: { (success) in
                print("Open url : \(success)")
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func mapButtonPressed(_ sender: Any) {

        dismiss(animated: false, completion: nil)
    }
    @IBAction func listButtonPressed(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
