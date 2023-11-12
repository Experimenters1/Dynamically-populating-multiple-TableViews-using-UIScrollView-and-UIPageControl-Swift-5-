//
//  TableViewCell2.swift
//  test2
//
//  Created by Huy Vu on 11/12/23.
//

import UIKit

class TableViewCell2: UITableViewCell {


    
    @IBOutlet weak var First: UILabel!
    
    @IBOutlet weak var Second: UILabel!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
