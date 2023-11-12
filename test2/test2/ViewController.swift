//
//  ViewController.swift
//  test2
//
//  Created by Huy Vu on 11/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TableView1: UITableView!
    
    @IBOutlet weak var TableView2: UITableView!
    
    var ResultOne:[String]! = ["Technicalisto" ,
                               
                               "“The Best Way To Get Started Is To Quit Talking And Begin Doing.” – Walt Disney" ,
                               
                               "“The Pessimist Sees Difficulty In Every Opportunity. The Optimist Sees Opportunity In Every Difficulty.” – Winston Churchill" ,
                               
                               "“Don’t Let Yesterday Take Up Too Much Of Today.” – Will Rogers"
    ]
    
    
    var ResultTwo:[(String , String)]! = [
        ("You Learn More From Failure Than From Success. Don’t Let It Stop You. Failure Builds Character.” – Unknown"
         , "“It’s Not Whether You Get Knocked Down, It’s Whether You Get Up.” – Inspirational Quote By Vince Lombardi") ,
        
        ("“If You Are Working On Something That You Really Care About, You Don’t Have To Be Pushed. The Vision Pulls You.” – Steve Jobs" ,
         "“People Who Are Crazy Enough To Think They Can Change The World, Are The Ones Who Do.” – Rob Siltanen"),
        
        ("You Learn More From Failure Than From Success. Don’t Let It Stop You. Failure Builds Character.” – Unknown"
         , "“It’s Not Whether You Get Knocked Down, It’s Whether You Get Up.” – Inspirational Quote By Vince Lombardi") ,
        
        ("“If You Are Working On Something That You Really Care About, You Don’t Have To Be Pushed. The Vision Pulls You.” – Steve Jobs" ,
         "“People Who Are Crazy Enough To Think They Can Change The World, Are The Ones Who Do.” – Rob Siltanen")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.TableView1.tableFooterView = UIView()
        
        // Đăng ký lớp hiệu ứng vào tableView
        TableView1.delegate = self
        TableView1.dataSource = self
        
        // Đăng ký lớp hiệu ứng vào tableView
        TableView2.delegate = self
        TableView2.dataSource = self
        
        TableView1.register(UINib(nibName: "TableViewCell1", bundle: nil), forCellReuseIdentifier: "sdfsdfsdf")
        
        
        TableView2.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "sdfsdfsdf")
        
        TableView2.reloadData()
        
        TableView1.reloadData()
    }


}


extension ViewController:   UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.TableView1 {
            
            let cell = self.TableView1.dequeueReusableCell(withIdentifier: "sdfsdfsdf") as! TableViewCell1
            
            cell.First.text = self.ResultOne[indexPath.row]
            
            
            return cell
            
        }else{
            
            let cell = self.TableView2.dequeueReusableCell(withIdentifier: "sdfsdfsdf") as! TableViewCell2
            
            cell.First.text = self.ResultTwo[indexPath.row].0
            
            cell.Second.text = self.ResultTwo[indexPath.row].1

            return cell
            
        }
    }
    
    // MARK: - UITableViewDelegate

        func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            // Kiểm tra xem dòng có phải là dòng chẵn không
            if indexPath.row % 2 == 0 {
                // Nếu là dòng chẵn, đặt màu nền khác nhau
                cell.backgroundColor = UIColor.lightGray
            } else {
                // Nếu là dòng lẻ, đặt màu nền khác
                cell.backgroundColor = UIColor.white
            }
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == self.TableView1 {
            
            return self.ResultOne.count
        }else{
            
            return self.ResultTwo.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TableViewCell1.heigh_cell
    }
}
