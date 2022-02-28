//
//  NewPlaceViewController.swift
//  MyPlaces
//
//  Created by Нюргун on 28.02.2022.
//  Copyright © 2022 Нюргун. All rights reserved.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Убираем разлиновку лишних строк
        tableView.tableFooterView = UIView()

    }
    
    // MARK: Table view delegatea
    // Вызов меню при выделении первой ячейки, иначе скрытие клавиатуры
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
    
}

// MARK: Text field delegate

extension NewPlaceViewController: UITextFieldDelegate {
    
    // Скрываем клавиатуру по нажатию на Done
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
}
