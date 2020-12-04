//
//  InterfaceController.swift
//  CookBookOnWhatch WatchKit Extension
//
//  Created by Elizaveta on 04.12.2020.
//

import WatchKit
import Foundation


class TableRecipesIC: WKInterfaceController
{
    @IBOutlet weak var table: WKInterfaceTable!

    // Происходит перед загрузкой экрана
    override func awake(withContext context: Any?)
    {
        // Метод, задающий количество строк
        table.setNumberOfRows(Recipes.getRecipe().count, withRowType: "rowTable")
        
        // Берем данные из структуры
        // enumerated() - возвращает пару значений
        for (index, item) in Recipes.getRecipe().enumerated()
        {
            // Возвращаем ячейку контроллера (по сути это строка таблицы)
            let controller = table.rowController(at: index) as! RowTable
            
            // Заполняем иконку и название рецепта из нашей структуры
            controller.rowRecipeName.setText(item.recipeName)
            controller.rowPicture.setImageNamed(item.recipeIcon)
        }
    }

    // Передаем индекс строки (чтобы можно было по строке выводить детальное описание рецепта)
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any?
    {
        return Recipes.getRecipe()[rowIndex]
    }

}
